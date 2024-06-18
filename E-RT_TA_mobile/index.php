<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="styles.css">
    <style>
    body {
    margin: 0;
    font-family: Arial, sans-serif;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    padding: 10px 20px;
    color: white;
}

.header-left h1 {
    margin: 0;
}

.header-right {
    position: relative;
}

.dropbtn {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    border: 2px solid white; /* Add a border around the button */
    border-radius: 5px; /* Add rounded corners */
    cursor: pointer;
    transition: background-color 0.3s, border-color 0.3s; /* Add transition for smooth hover effect */
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
    min-width: 148px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #555;
}

main {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 80vh;
    background-color: #f2f2f2;
}

.content-container {
    background-color: white;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 80%;
    max-width: 600px;
}

.content-image {
    max-width: 100%;
    height: auto;
}

.image-title {
    margin-top: 10px;
}
.gambar {
    display: flex;
    justify-content: center; /* Horizontally center content */
    align-items: center; 
}
/* Responsive Styles */
@media (max-width: 768px) {
    header {
        flex-direction: column;
        align-items: flex-start;
    }

    .header-right {
        width: 100%;
        display: flex;
        justify-content: flex-end;
    }

    .dropbtn {
        width: 100%;
    }
}

@media (max-width: 480px) {
    .content-container {
        width: 90%;
    }

    .dropbtn {
        font-size: 14px;
        padding: 8px;
    }

    .dropdown-content a {
        padding: 10px;
    }
}

    </style>
</head>
<body>
    <header>
        <div class="header-left">
            <h3>Sistem Pelayanan Warga</h3>
        </div>
        <div class="header-right">
            <div class="dropdown">
                <button class="dropbtn">Login sebagai:</button>
                <div class="dropdown-content">
                    <a href="warga/login_warga.php">Warga</a>
                    <a href="pengurus_rt/login_rt.php">RT</a>
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="content-container">
            <div class="gambar">
            <img src="gambar/logoviladago.png" alt="Image" class="content-image">
            </div>
            <h2 class="image-title">Sistem Pelayanan Warga - Cluster Tampak Siring</h2>
        </div>
    </main>
</body>
</html>
