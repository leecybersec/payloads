<?php
// curl -F "fileToUpload=@a.txt" 127.0.0.1/upload.php
$uploaddir = '/var/www/html/uploads/';

$target_file= $uploaddir . $_FILES['fileToUpload']['name'];

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
	echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
}
?>