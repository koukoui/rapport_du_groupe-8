<?php

$base = mysql_connect ('127.0.0.1', 'root', ''); 

mysql_select_db ('universite', $base) ;  

 $login=$_GET['login'];
 $password =$_GET['password'];

  $chaine='';

       $sql = 'SELECT * FROM user WHERE login = "'.$login.'" AND password="'.$password.'"';
	   
	  $req = mysql_query($sql);
     
      if ($data = mysql_fetch_array($req)) 
	  
	  $chaine="OK!".$chaine.$data["id"]."! #";
	  
	  else 
	  
	 $chaine='KO!';
	
     echo $chaine;
 
  mysql_free_result ($req);  
  mysql_close ();
?>  
 
 
 