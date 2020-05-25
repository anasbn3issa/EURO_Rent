<?php
 include("../client/contact.php"); 

// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Load Composer's autoloader
if (isset($_POST['mailing'])) {

require 'vendor/autoload.php';
  header('Location: ../client/contact.php');

$mail = new PHPMailer(true);

    //Server settings
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'yassine.benouaghrem@esprit.tn';                     // SMTP username
    $mail->Password   = '181JMT2823';                               // SMTP password
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
 
    //Recipients
    $mail->setFrom($_POST['email'], $_POST['sujet']);
    $mail->addAddress('yassine.clusbiste1@hotmail.fr', 'yassine ben ouaghrem');     // Add a recipien,
    

    // Attachments
    
    // Content
   
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = $_POST['sujet'];;
    $mail->Body    = $_POST['message'];

    $mail->send();
    //echo 'Message has been sent';
 
}