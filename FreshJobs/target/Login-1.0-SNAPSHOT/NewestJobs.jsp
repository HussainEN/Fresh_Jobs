<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Newest Jobs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(45deg, #4CAF50, #007bff);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 0;
        }
        .nav-item {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            font-weight: bold;
            color: #333;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
            border-radius: 5px;
        }
        .nav-item:hover {
            background-color: #dee2e6;
            color: #4CAF50;
        }
        .nav-item.active {
            background-color: #f8f9fa;
            color: #4CAF50;
            width: 100%;
            display: flex;
            justify-content: flex-start;
        }
        .nav-container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f8f9fa;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }
        .nav-link {
            display: inline;
            border-right: 250px;
        }
        .btn {
            float: right;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .nav-item.ml-auto {
            margin-left: auto;
        }
        .logo {
            font-family: 'Arial', sans-serif;
            font-size: 3em;
            font-weight: bold;
            color: #333;
            border-radius: 5px;
        }
        .fresh {
            color: #4CAF50;
        }
        .jobs {
            color: #007bff;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            font-size: 2rem;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-control {
            padding: 10px;
            font-size: 14px;
        }
        .btn-primary {
            background-color: #4CAF50;
            border-color: #4CAF50;
        }
        .btn-primary:hover {
            background-color: #45a049;
            border-color: #45a049;
        }
        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }
        .footer a {
            color: #4CAF50;
            text-decoration: none;
        }
        .footer a:hover {
            color: #007bff;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="logo">
                <span class="fresh">Fresh</span>
                <span class="jobs">Jobs</span>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="ListItems.jsp">Jobs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="NewestJobs.jsp">Newest Jobs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="About.jsp">Team Members</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Login.jsp">Log Out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1 class="text-primary">Newest Jobs</h1>
        <form>
            <div class="form-group">
                <input type="text" class="form-control" id="jobname" name="jobname" placeholder="Job Name" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="company" name="company" placeholder="Company" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="jobplace" name="jobplace" placeholder="Place" required>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" id="experience" name="experience" placeholder="Experience" required>
            </div>
            <div class="form-group">
                <input type="number" class="form-control" id="jobsalary" name="jobsalary" placeholder="Salary" required>
            </div>
            <button type="button" class="btn btn-primary" id="addJobButton">New Job</button>
        </form>

        <div id="jobList" class="mt-4">
            <!-- New job cards will be added here -->
        </div>
    </div>
<footer><div class="row mt-3">
                <div class="col text-center">
                    <p class="mb-0">&copy; 2024 Fresh Jobs. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
     <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
