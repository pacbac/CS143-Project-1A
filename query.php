<!DOCTYPE html>
<?php
   $query = $_GET['query']; // get the query from the get request
   // establish connection with db
   $db_connection = mysql_connect("localhost", "cs143", "");
   mysql_select_db("TEST", $db_connection); //
   ?>
<html>
  <body>
    <h1>Enter your SQL query here:</h1>
    // form data, pressing submit will rerun the page with the textarea query
    <form action="query.php" method="GET">
      <textarea name="query" cols="60" rows="8"><?php print "$query" ?></textarea>
      <br />
      <input type="submit" value="Submit" />
   </form>
    <br/>
    // print out data
    <?php 
       $rs = mysql_query($query, $db_connection);
       while($row = mysql_fetch_row($rs)){
       for($i = 0; $i < sizeof($row); $i++){
	echo "$row[$i] ";
	}
	echo "<br/>";
       }
       mysql_close($db_connection);
       ?>
  </body>
</html>
