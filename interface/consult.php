 <html>
  <head>
    <title>PHP/ASSOIATION</title>
  </head>
<?php
    include "connect.php"; 
  $query = oci_parse($conn, 'select * from FILM');
    oci_execute($query);
    echo "<table>";
    while ($row = oci_fetch_array($query, OCI_ASSOC)) {
      echo "<tr>\n";
      foreach ($row as $item) {
        echo "    <td>" . $item. "</td>\n";
      }
      echo "</tr>\n";
    }
    echo "</table>\n";
    oci_free_statement($query);
    oci_close($conn);
?>
</html>
