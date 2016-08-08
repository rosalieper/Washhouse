<?php
require_once("AccountClasses.php");
require_once("Page.php");
//require_once("LoginForm/PageUser.php");

//Filename: AccountClasses.php
//Author: Alangi Derick
//Description: This is a class that deals with validation of Forms

/*extract($_POST);*/
if(isset($_POST["submit"])){
	$pageuser = new LogIn($_POST['username'], "");
	$pageuser->login($_POST['username'], md5($_POST['password']));
}

else {
	$redirect = new PageContent();
	$redirect->displayPage();
}

?>