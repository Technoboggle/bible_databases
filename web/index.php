<?php
// Edit these variables to meet your environment:
$mysql_server = "localhost";
$mysql_username = "bible";
$mysql_password = "bible";
$mysql_db = "bible"; // this is the default table name

$default_text = "John 3:16";

/*** DO NOT EDIT BELOW THIS LINE (Unless you know what you are doing :) ) ***/

$mysqli = new mysqli($mysql_server, $mysql_username, $mysql_password, $mysql_db);

/*
 * This is the "official" OO way to do it,
 * BUT $connect_error was broken until PHP 5.2.9 and 5.3.0.
 */
if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}

include("bible_to_sql.php");
//echo "b: ".$_GET['b']." r: ".(isset($_GET['r']) ? $_GET['r'] : '' )."<br />";


//split at commas
$references = (isset($_GET['b']) ? explode(",",$_GET['b']) : false);
//$references = explode(",",$_GET['b']);
$version = (isset($_GET['v']) && !empty($_GET['v'])) ? 't_'.trim(strtolower($_GET['v'])) : 't_ncb';
$x = (isset($_GET['x']) && trim ($_GET['x']=='1')) ? true : false;
if(isset($_GET['f']) && trim ($_GET['f']=='1')) {
  $form=true;
} elseif(isset($_GET['f']) && trim ($_GET['f']=='0')) {
  $form=false;
} elseif($references!==false) {
  $form=false;
} else {
  $form=true;
}
?>
<html>
<head>
<title>Bible Search</title>
<style type="text/css">
.versenum {
  font: normal 0.4em "Times New Roman", Times, serif;
  vertical-align: super;
  padding-left: 0.5em;
  padding-right: 0em;
  display: inline-block;
  margin-left: 0em;
  border-left: 0em;
  border: none;
}
.versenum.jb {
  vertical-align: text-top;
  padding-right: 0.2em;
  line-height: 10%;
}
.versetext {
  font: 1.2em "Times New Roman", Times, serif;
  padding-left: 0em;
  padding-right: 0em;
  display: inline;
  margin-left: 0em;
  border-left: 0em;
  word-wrap: break-word;
}
.refname {
  font: normal 0.6em "Times New Roman", Times, serif;
  vertical-align: super;
  padding-left: 0.5em;
  padding-right: 0em;
  display: inline-block;
  margin-left: 0em;
  border-left: 0em;
  border: none;
}
.refname.jb {
  vertical-align: text-top;
  padding-right: 0.2em;
  line-height: 10%;
}
.reflist {
  font: 0.8em "Times New Roman", Times, serif;
  padding-left: 0em;
  padding-right: 0em;
  display: inline;
  margin-left: 0em;
  border-left: 0em;
  word-wrap: break-word;
}
a {
  color: inherit; /* colors for links too */
  text-decoration: inherit; /* no underline */
}
</style>
</head>
<body>
  <header><?php if($form): ?>
    <form action="index.php" action="GET">
    <!-- TODO: Bible dropdown. Defaults to KJV. -->
    <label for="b">Reference(s): </label><input type="hidden" name="f" value="1" /><input type="hidden" name="x" value="1" /><input type="text" name="b" value="<?php if ($references) { echo $_GET['b']; } else { echo $default_text; } ?>" /><input type="submit" value="Search" /><br />
    </form><?php endif; ?>
  </header>
  <main>
    <?php
    //return results
    if($references){
      $X_refs = array();
      foreach ($references as $r) {
        $ret = new bible_to_sql($r, NULL, $mysqli);
        //SELECT * FROM bible.t_kjv WHERE id BETWEEN 01001001 AND 02001005
        $sqlquery = "SELECT * FROM ".((isset($mysql_db) && !empty($mysql_db)) ? trim($mysql_db).'.' : '').$version." WHERE " . $ret->sql();
        $stmt = $mysqli->stmt_init();
        $stmt->prepare($sqlquery);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
          //$row = $result->fetch_array(MYSQLI_NUM);
          //0: ID 1: Book# 2:Chapter 3:Verse 4:Text
          print "<article><header><h1>{$ret->getBook()} {$ret->getChapter()}</h1></header>";
          while ($row = $result->fetch_row()) {
            echo( "<span class=\"versenum".(($version!='t_ncb' && $version!='t_jb') ? '' : ' jb')."\">${row[3]}</span><span class=\"versetext\">${row[4]}</span>".($version!='t_ncb' ? '<br />' : ''));
            if($x) {
              $sqlqueryInner = "SELECT * FROM `cross_reference` WHERE `vid`=" . $row[0].' ORDER BY r ASC';
              $stmtInner = $mysqli->stmt_init();
              $stmtInner->prepare($sqlqueryInner);
              $stmtInner->execute();
              $resultInner = $stmtInner->get_result();
              if ($resultInner->num_rows > 0) {
                $x_temp=array();
                while ($rowInner = $resultInner->fetch_row()) {
                  $x_temp[]=$rowInner;
                }
                $X_refs[$row[0]]=$x_temp;
              }
            }
          }
          print "</article>";
        } else {
          print "Did not understand your input.";
        }
        $stmt->close();
      }
      if($x){
        echo("<br />");
        $new_xrefs=array();
        foreach($X_refs as $vid=>$ref){
          $book = substr($vid, 0, -6);
          $chapter = (int)substr(substr($vid, -6), 0, 3);
          $verse = (int)substr($vid, -3);
          $resp =  convertToBook($book, $mysqli, $mysql_db);
          $xKey = $resp.' '.$chapter.':'.$verse;
          foreach($ref as $key=>$x_ref){
            $xSrank = (int)$x_ref[1];
            $xSbook = substr($x_ref[2], 0, -6);
            $xSchapter = (int)substr(substr($x_ref[2], -6), 0, 3);
            $xSverse = (int)substr($x_ref[2], -3);
            $xEbook = substr($x_ref[3], 0, -6);
            $xEchapter = (int)substr(substr($x_ref[3], -6), 0, 3);
            $xEverse = (int)substr($x_ref[3], -3);
            $xresp =  convertToBook($xSbook, $mysqli, $mysql_db);
            $shortcode = getMainAbbr($xSbook, $mysqli, $mysql_db).' '.$xSchapter;
            if($xSverse != 0){
              $shortcode .= ':'.$xSverse;
            }
            if($xEverse != 0){
              $shortcode .= '-'.$xEverse;
            }
            $carryVersion = (($version!='t_ncb') ? '&v='.substr($version, 2) : '');
            $carryReferences = (($x===true) ? '&x=1' : '');
            $carryform = (($form===true) ? '&f=1' : '');
            $page=explode('?', 'http' . (isset($_SERVER['HTTPS']) ? 's' : '') . '://' . "{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}");
            $new_xrefs[$xKey][]= '<a href="'.$page[0].'?b='. $shortcode. $carryReferences .  $carryVersion . $carryform . '" class="url fn" rel="author"><span itemprop="author">'.$shortcode.'</span></a>';
          }
        }
        foreach($new_xrefs as $displayedVerse=>$links){
          echo("<span class=\"refname".(($version!='t_ncb' && $version!='t_jb') ? '' : ' jb')."\">${displayedVerse}</span><span class=\"reflist\">".implode(',&nbsp;', $links)."</span><br />");
        }
      }
    }
  ?>
  </main>
  <footer><?php if($form): ?>
    <form action="index.php" action="GET">
      <!-- TODO: Bible dropdown. Defaults to KJV. -->
      <label for="b">Reference(s): </label><input type="hidden" name="f" value="1" /><input type="hidden" name="x" value="1" /><input type="text" name="b" value="<?php if ($references) { echo $_GET['b']; } else { echo 'John 3:16'; } ?>" /><input type="submit" value="Search" /><br />
    </form><?php endif; ?>
  </footer>
</body>
</html><?php $mysqli->close(); 
