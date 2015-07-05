<?php

 $base = mysql_connect ('127.0.0.1', 'root', '');  
 mysql_select_db ('universite', $base) ;  
 
 $prenom=$_GET['prenom'];
 $nom=$_GET['nom'];
 $genre=$_GET['genre'];
 $diplome=$_GET['diplome'];
 $formation=$_GET['formation'];
 $logininscr=$_GET['logininscr'];
 $passwordinscr=$_GET['passwordinscr'];

$sql1 = "SELECT login,password FROM etudiant WHERE login='$logininscr' and password='$passwordinscr'"; 
$req = mysql_query($sql1) or die('Erreur SQL !'.$sql1.'<br>'.mysql_error()); 
$res= mysql_num_rows($req); 

if($res!=0)
    { 
    echo 'Echec inscription login ou password interdits'; 
    } 
else{
 
 $sql = "INSERT into etudiant (prenom, nom, genre, diplome, formation, login, password) VALUES ('$prenom','$nom', '$genre','$diplome', '$formation', '$logininscr', '$passwordinscr')";
 $id = mysql_insert_id();
 $sql2 = "INSERT into user (id, login, password) VALUES ('$id','$logininscr','$passwordinscr')";
}

 if ((mysql_query($sql))==true)
 echo 'Inscription réussie !'; 
 else 
 echo 'Echec Inscription !'; 

 if ((mysql_query($sql2))==true)
 echo 'User créé !'; 
 else 
 echo 'Echec création user!'; 


 mysql_close();
 
?> 
 
 
 