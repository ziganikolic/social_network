<?php include "inc/header.php"; 
login_check_pages();

?>

<div>
<?php 
    display_message(); 
    validate_user_login();    
?>
</div>

<form method="POST">
    <input type="email" name="email" placeholder="Emial" required>
    <input type="password" name="password" placeholder="password" required>
    <input type="submit" name="login-submit" value="Log in">
</form>

<?php include "inc/footer.php"; ?>