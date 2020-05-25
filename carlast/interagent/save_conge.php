<?php

include('db.php');

if (isset($_POST['save_conge'])) {

  $cin= $_POST['cin'];
  $debut= $_POST['debut'];
  $fin = $_POST['fin'];
  $motif = $_POST['motif'];
  $query = "INSERT INTO conge(cin, debut,fin,motif) VALUES ('$cin', '$debut','$fin','$motif')";
mail('fourat81138@gmail.com','demande de congé du cin donné au dessous',$cin,'From : fourat113@live.fr'); 
 $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Congé ajouté';
  $_SESSION['message_type'] = 'success';
  header('Location: gestionconge.php');

}

?>
