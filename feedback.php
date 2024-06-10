<?php
// session_start();

// if (!isset($_SESSION["admin_id"])) {
//     // Redirect to admin login if not logged in
//     header("Location: admin_panel.php");
//     exit();
// }

// Connect to the database (replace these values with your actual database credentials)
$server = "localhost";
$user  = "root";
$pass = "";
$database = "bewellpharmacy";

$conn = new mysqli("localhost","root","","bewellpharmacy");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
echo "";


// Retrieve contact messages from the database
$sql = "SELECT * FROM feedback ORDER BY id DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="stylelogin.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Text:wght@700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /*body{
            background-image: url('images/background2.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }*/
        body {
            background-color: #f8f9fa;
        }
        .container {
            padding: 20px;
        }
        .card {
            border: none;
            transition: all 0.3s;
        }
        .card:hover {
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .table th, .table td {
            vertical-align: middle;
        }

    </style>
</head>
<body>
<div class="container1">
    <nav>
        <img src="logos/mainlogo1.png" class="logo">
        <ul>
            <li><a href="./index.html">Home</a></li>
            <li><a href="./index.html">Logout</a></li>
            <li><a href="admin_panel.php">Orders</a></li>
        </ul>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Admin Panel</h2>
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        
                        <th>Email</th>
                        <th>Feedback</th>
                       
                       
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["email"] . "</td>";
                            echo "<td>" . $row["feedback"] . "</td>";
                           
					
                   
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='5'>No messages found</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>