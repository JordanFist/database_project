<?php

$login = 'tleechaoshi';
$db_pwd = 'mathias';

$conn = oci_connect($login, $db_pwd, 'oracle/oracle');
if (!$conn) {
   $e = oci_error();
   trigger_error(htmlenétities($e['message'], ENT_QUOTES), E_USER_ERROR);

}
?>
