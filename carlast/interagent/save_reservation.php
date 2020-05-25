<?php

include('db.php');

if (isset($_POST['save_reservation'])) {
  $reservation = $_POST['reservation'];
  $client = $_POST['client'];
  $voiture = $_POST['voiture'];
  $depart = $_POST['depart'];
  $retour = $_POST['retour'];
  $livraison = $_POST['livraison'];
  $etat = $_POST['etat'];
  $prix = $_POST['prix'];

  $query = "INSERT INTO reservation(reservation, client, voiture,depart,retour, livraison, etat, prix) VALUES ('$reservation', '$client','$voiture','$depart','$retour','$livraison','$etat', '$prix')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Réservation ajouter avec succés';
  $_SESSION['message_type'] = 'success';
  header('Location: gestionreservation.php');

}

?>
