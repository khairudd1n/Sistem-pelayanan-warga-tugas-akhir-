<?php
session_start();

function check_access($required_roles) {
    if (!isset($_SESSION['role']) || !in_array($_SESSION['role'], $required_roles)) {
        header("Location: ../unauthorized.php");
        exit();
    }
}
?>
