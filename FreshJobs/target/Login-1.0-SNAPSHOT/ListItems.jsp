<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>List of Items</title>
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
  
        h2 {
            text-align: center;
            color: #ffffff;
            margin-bottom: 20px;
        }
          .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        .cards-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 15px;
            padding: 20px;
            text-align: center;
            flex: 1 1 calc(25% - 30px);
            box-sizing: border-box;
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        .card h3 {
            margin: 0;
            padding: 0;
            color: #333;
        }
        .card h4 {
            color: #007bff;
            margin: 10px 0;
        }
        .card h5 {
            color: #28a745;
            margin: 10px 0;
        }
        .card p {
            color: #555;
            margin: 10px 0;
        }
        .btn {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-edit {
            background-color: #007bff;
            color: white;
        }
        .btn-delete {
            background-color:red;
            color: white;
        }
        .btn-edit:hover {
            background-color: #0056b3;
        }
        .btn-delete:hover {
            background-color:#0056b3;
        }
        .filter-input {
            margin-bottom: 20px;
            padding: 10px;
            width: calc(100% - 22px);
            border: 1px solid #ccc;
            border-radius: 5px;
            display: block;
        }
        .filter-button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: block;
            margin: 0 auto;
        }
        .filter-button:hover {
            background-color: #343a40;
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

/* Hover state for navigation items */
.nav-item:hover {
    background-color: #dee2e6;
    color: #4CAF50;
}

/* Active state for the current page navigation item */
.nav-item.active {
    background-color: #f8f9fa;
    color: #4CAF50;
    width: 100%;
    display: flex;
    justify-content: flex-start;

}

/* Optional: Styling for navigation items within a nav container */
.nav-container {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f8f9fa;
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
}
        .nav-link {
            display:inline;
            border-right:250px;
             
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
    color: #4CAF50; /* Green color */
}

.jobs {
    color: #007bff; /* Dark gray color */
}
.h{
    text-align: right;
}
.btn-edit {
    background-color: #4CAF50; /* Green */
    color: white;
    border: none;
     padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;
}

.btn-delete {
    background-color: #f44336; /* Red */
    color: white;
    border: none;
     padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;
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
    <script>
        function filterItems() {
            var input = document.getElementById('filterInput');
            var filter = input.value.toLowerCase();
            var cards = document.getElementsByClassName('card');

            for (var i = 0; i < cards.length; i++) {
                var h3 = cards[i].getElementsByTagName('h3')[0];
                if (h3.innerHTML.toLowerCase().indexOf(filter) > -1) {
                    cards[i].style.display = "";
                } else {
                    cards[i].style.display = "none";
                }
            }
        }
    </script>
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
 <div class="logo">
        <span class="fresh">Fresh</span>
        <span class="jobs">Jobs</span>
    </div>            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
        <h2>List of Items</h2>
        <input type="text" id="filterInput" class="filter-input" placeholder="Type to filter items...">
        <button onclick="filterItems()" class="filter-button">Filter</button><hr>
        <div class="cards-container">
            <div class="card">
                <h3>Front-End Developer</h3>
                <h4>Misk <hr> Riyadh</h4>
                <h5>Experience: 2 Years </h5>
                <p>Salary 7300 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application Developer</h3>
                <h4>Sadaia <hr> Jazan</h4>
                <h5>Experience: 1 Years </h5>
                <p>Salary 5500 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application<br>UX/UI Designer</h3>
                <h4>Al'Rajhi <hr> Jazan</h4>
                <h5>Experience: 3 Years </h5>
                <p>Salary 6500 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application Developer</h3>
                <h4>Jazan University <hr> Jazan</h4>
                <h5>Experience: Fresh Graduate</h5>
                <p>Salary 4500 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application Analyst</h3>
                <h4>Derayah <hr> Riyadh</h4>
                <h5>Experience: 3 Years</h5>
                <p>Salary 8000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>System Analyst</h3>
                <h4>Aramco <hr> Riyadh</h4>
                <h5>Experience: 5 Years</h5>
                <p>Salary 10000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>                
            </div><hr>
            <div class="card">
                <h3>Application Analyst</h3>
                <h4>Aramco <hr> Dammam</h4>
                <h5>Experience: 3 Years</h5>
                <p>Salary 9000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application Analyst</h3>
                <h4>Almarai <hr> Abha</h5>
                <h5>Experience: 1 Year</h5>
                <p>Salary 6000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Application Analyst</h3>
                <h4>Alblad <hr> Dammam</h5>
                <h5>Experience: 3 Years</h5>
                <p>Salary 9000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>System Analyst</h3>
                <h4>Alahli <hr> Jazan</h5>
                <h5>Experience: 3 Years</h5>
                <p>Salary 11000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>System Analyst</h3>
                <h4>Alinma <hr> Al-Qassim</h5>
                <h5>Experience: 2 Years</h5>
                <p>Salary 10000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Data Entry</h3>
                <h4>Othaim Supermarkets <hr> Jeddah</h5>
                <h5>Experience: 2 Years</h5>
                <p>Salary 8000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Data Entry</h3>
                <h4>Derayah <hr> Riyadh</h5>
                <h5>Experience: 3 Years</h5>
                <p>Salary 12000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div><hr>
            <div class="card">
                <h3>Data Entry</h3>
                <h4>Panda <hr> Tabuk</h5>
                <h5>Experience: 2 Years</h5>
                <p>Salary 8000 SAR</p>
                <button class="btn btn-edit" onclick="editItem(this)">Edit</button>
                <button class="btn btn-delete" onclick="deleteItem(this)">Delete</button>
            </div>
        </div></div>
    </div>
    <footer><div class="row mt-3">
                <div class="col text-center">
                    <p class="mb-0">&copy; 2024 Fresh Jobs. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script>
function editItem(button) {
    const itemText = button.parentElement.querySelector('h3');
    const newText = prompt("Enter the new text:", itemText.textContent);
    if (newText !== null) {
        itemText.textContent = newText;
    }
}

function deleteItem(button) {
    const item = button.parentElement;
    if (confirm("Are you sure you want to delete this item?")) {
        item.remove();
    }
}
</script>
</body>
</html>
