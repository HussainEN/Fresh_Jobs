<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(45deg, #4CAF50, #007bff);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .content-wrapper {
            display: flex;
            align-items: center;
            background-color: #dee2e6;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 1, 0, 0.1);
        }
        .logo {
            font-family: 'Arial', sans-serif;
            font-size: 3em;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-right: 20px;
        }
        .fresh {
            color: #4CAF50; /* Green color */
        }
        .jobs {
            color: #007bff; /* Blue color */
        }
        .container {
            text-align: center;
            width: 300px;
        }
        h1 {
            text-align: center;
            color: #333;
            
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 22px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #4CAF50;
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
    <div class="content-wrapper">
        <div class="logo">
            <span class="fresh">Fresh</span>
            <span class="jobs">Jobs</span>
        </div>
        <div class="container">
            <h1>Login</h1>
            <form action="Loginser" method="post">
                <input type="text" id="username" name="username" placeholder="Username" required><br>
                <input type="password" id="password" name="password" placeholder="Password" required><br>
                <input type="submit" value="Login">
            </form>
        </div>
    </div>
   
     <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
