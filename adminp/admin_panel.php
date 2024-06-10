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
echo "Connected successfully";


// Retrieve contact messages from the database
$sql = "SELECT * FROM orders";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - BE WELL PHARMACY</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background: #141E30;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #243B55, #141E30);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #243B55, #141E30); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
        <div class="container">
            <a class="navbar-brand" href="#">BE WELL PHARMACY</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Admin Panel</h2>
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>phone</th>
                        <th>Address</th>
				<th>Pmode</th>
				<th>Products</th>
				<th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["id"] . "</td>";
                            echo "<td>" . $row["name"] . "</td>";
                            echo "<td>" . $row["email"] . "</td>";
                            echo "<td>" . $row["phone"] . "</td>";
					echo "<td>" . $row["address"] . "</td>";
					echo "<td>" . $row["pmode"] . "</td>";
					echo "<td>" . $row["products"] . "</td>";
					echo "<td>" . $row["amount_paid"] . "</td>";
                   
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
