<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About - Team</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(45deg, #4CAF50, #007bff);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
        }
        .team-card {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            margin: 15px;
            padding: 20px;
            text-align: center;
            flex: 1 1 calc(25% - 30px);
            box-sizing: border-box;
        }
        .team-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .team-card h3 {
            margin: 0;
            padding: 0;
            color: #343a40;
        }
        .team-card p {
            margin: 10px 0;
            color: #6c757d;
        }
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

           .nav-item {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            font-weight: bold;
            color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
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
        .nav-link active{
           color:red;
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
        /* From Uiverse.io by aarjaycreation */ 
        .main__socials {
          display: flex;
          flex-direction: row;
          gap: 0.5em;
        }

        .Link__instagram {
          padding: 0.8em;
          outline: none;
          border: none;
          background: white;
          box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
            rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
          transition: 0.2s ease-in-out;
        }

        .instagram {
          fill: #cc39a4;
        }

        .Link__twitter {
          padding: 0.8em;
          outline: none;
          border: none;
          background: white;
          box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
            rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
          transition: 0.2s ease-in-out;
        }

        .twitter {
          fill: #03a9f4;
        }

        .Link__github {
          padding: 0.8em;
          outline: none;
          border: none;
          background: white;
          box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
            rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
          transition: 0.2s ease-in-out;
        }

        .Link__discord {
          padding: 0.8em;
          outline: none;
          border: none;
          background: white;
          box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
            rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
          transition: 0.2s ease-in-out;
        }

        .discord {
          fill: #8c9eff;
        }

        .Link__instagram:hover {
          cursor: pointer;
          scale: 1.1;
          background-color: #cc39a4;
        }

        .Link__instagram:hover .instagram {
          fill: white;
        }

        .Link__twitter:hover {
          cursor: pointer;
          scale: 1.1;
          background-color: #03a9f4;
        }

        .Link__twitter:hover .twitter {
          fill: white;
        }

        .Link__github:hover {
          cursor: pointer;
          scale: 1.1;
          background-color: black;
        }

        .Link__github:hover .github {
          fill: white;
        }

        .Link__discord:hover {
          cursor: pointer;
          scale: 1.1;
          background-color: #8c9eff;
        }

        .Link__discord:hover .discord {
          fill: white;
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
        <h2>Team Members</h2>
        <p>Meet the talented individuals who make up our team.</p>

        <div class="cards-container">
            <div class="team-card">
                <h3>Hussein Namazi</h3>
               <p>Project Manager & Full Stack Developer</p>
               <p>Hussein Namazi is a proficient project manager and full stack developer. He excels in correcting website issues, building both front-end and back-end components, managing databases, implementing cookies and sessions, and deploying websites publicly.</p>
           
  <button class="Link__twitter">
    <svg
      xmlns="https://x.com/HussainEN_dev"
      viewBox="0 0 48 48"
      width="30px"
      height="30px"
      class="twitter"
    >
      <path
        d="M42,12.429c-1.323,0.586-2.746,0.977-4.247,1.162c1.526-0.906,2.7-2.351,3.251-4.058c-1.428,0.837-3.01,1.452-4.693,1.776C34.967,9.884,33.05,9,30.926,9c-4.08,0-7.387,3.278-7.387,7.32c0,0.572,0.067,1.129,0.193,1.67c-6.138-0.308-11.582-3.226-15.224-7.654c-0.64,1.082-1,2.349-1,3.686c0,2.541,1.301,4.778,3.285,6.096c-1.211-0.037-2.351-0.374-3.349-0.914c0,0.022,0,0.055,0,0.086c0,3.551,2.547,6.508,5.923,7.181c-0.617,0.169-1.269,0.263-1.941,0.263c-0.477,0-0.942-0.054-1.392-0.135c0.94,2.902,3.667,5.023,6.898,5.086c-2.528,1.96-5.712,3.134-9.174,3.134c-0.598,0-1.183-0.034-1.761-0.104C9.268,36.786,13.152,38,17.321,38c13.585,0,21.017-11.156,21.017-20.834c0-0.317-0.01-0.633-0.025-0.945C39.763,15.197,41.013,13.905,42,12.429"
      ></path>
    </svg>
  </button>
  <button class="Link__github">
    <svg
      xmlns="https://github.com/HussainEN"
      viewBox="0 0 30 30"
      width="30px"
      height="30px"
      class="github"
    >
      <path
        d="M15,3C8.373,3,3,8.373,3,15c0,5.623,3.872,10.328,9.092,11.63C12.036,26.468,12,26.28,12,26.047v-2.051 c-0.487,0-1.303,0-1.508,0c-0.821,0-1.551-0.353-1.905-1.009c-0.393-0.729-0.461-1.844-1.435-2.526 c-0.289-0.227-0.069-0.486,0.264-0.451c0.615,0.174,1.125,0.596,1.605,1.222c0.478,0.627,0.703,0.769,1.596,0.769 c0.433,0,1.081-0.025,1.691-0.121c0.328-0.833,0.895-1.6,1.588-1.962c-3.996-0.411-5.903-2.399-5.903-5.098 c0-1.162,0.495-2.286,1.336-3.233C9.053,10.647,8.706,8.73,9.435,8c1.798,0,2.885,1.166,3.146,1.481C13.477,9.174,14.461,9,15.495,9 c1.036,0,2.024,0.174,2.922,0.483C18.675,9.17,19.763,8,21.565,8c0.732,0.731,0.381,2.656,0.102,3.594 c0.836,0.945,1.328,2.066,1.328,3.226c0,2.697-1.904,4.684-5.894,5.097C18.199,20.49,19,22.1,19,23.313v2.734 c0,0.104-0.023,0.179-0.035,0.268C23.641,24.676,27,20.236,27,15C27,8.373,21.627,3,15,3z"
      ></path>
    </svg>
  </button>
</div>

            </div>
            
            <div class="team-card">
                <h3>Rayan Faqihi </h3>
                <p> Github Leader & Front Developer </p>
                <p>Rayan Faqihi is a skilled front-end developer known for his leadership on GitHub and expertise in managing web development projects. He excels in creating user-friendly main pages and integrating various links and resources efficiently.</p>
 <button class="Link__twitter">
    <svg
      xmlns="https://rayanfaqihi.erbut.me/"
      viewBox="0 0 48 48"
      width="30px"
      height="30px"
      class="twitter"
    >
      <path
        d="M42,12.429c-1.323,0.586-2.746,0.977-4.247,1.162c1.526-0.906,2.7-2.351,3.251-4.058c-1.428,0.837-3.01,1.452-4.693,1.776C34.967,9.884,33.05,9,30.926,9c-4.08,0-7.387,3.278-7.387,7.32c0,0.572,0.067,1.129,0.193,1.67c-6.138-0.308-11.582-3.226-15.224-7.654c-0.64,1.082-1,2.349-1,3.686c0,2.541,1.301,4.778,3.285,6.096c-1.211-0.037-2.351-0.374-3.349-0.914c0,0.022,0,0.055,0,0.086c0,3.551,2.547,6.508,5.923,7.181c-0.617,0.169-1.269,0.263-1.941,0.263c-0.477,0-0.942-0.054-1.392-0.135c0.94,2.902,3.667,5.023,6.898,5.086c-2.528,1.96-5.712,3.134-9.174,3.134c-0.598,0-1.183-0.034-1.761-0.104C9.268,36.786,13.152,38,17.321,38c13.585,0,21.017-11.156,21.017-20.834c0-0.317-0.01-0.633-0.025-0.945C39.763,15.197,41.013,13.905,42,12.429"
      ></path>
    </svg>
  </button>
  <button class="Link__github">
    <svg
      xmlns="https://github.com/RAYANFAQIHI"
      viewBox="0 0 30 30"
      width="30px"
      height="30px"
      class="github"
    >
      <path
        d="M15,3C8.373,3,3,8.373,3,15c0,5.623,3.872,10.328,9.092,11.63C12.036,26.468,12,26.28,12,26.047v-2.051 c-0.487,0-1.303,0-1.508,0c-0.821,0-1.551-0.353-1.905-1.009c-0.393-0.729-0.461-1.844-1.435-2.526 c-0.289-0.227-0.069-0.486,0.264-0.451c0.615,0.174,1.125,0.596,1.605,1.222c0.478,0.627,0.703,0.769,1.596,0.769 c0.433,0,1.081-0.025,1.691-0.121c0.328-0.833,0.895-1.6,1.588-1.962c-3.996-0.411-5.903-2.399-5.903-5.098 c0-1.162,0.495-2.286,1.336-3.233C9.053,10.647,8.706,8.73,9.435,8c1.798,0,2.885,1.166,3.146,1.481C13.477,9.174,14.461,9,15.495,9 c1.036,0,2.024,0.174,2.922,0.483C18.675,9.17,19.763,8,21.565,8c0.732,0.731,0.381,2.656,0.102,3.594 c0.836,0.945,1.328,2.066,1.328,3.226c0,2.697-1.904,4.684-5.894,5.097C18.199,20.49,19,22.1,19,23.313v2.734 c0,0.104-0.023,0.179-0.035,0.268C23.641,24.676,27,20.236,27,15C27,8.373,21.627,3,15,3z"
      ></path>
    </svg>
  </button>
            </div>
            
            <div class="team-card">
                <h3>Muhammad Ghazwani </h3>
                <p>Front Developer</p>
                <p>Muhammad Ghazwani is an adept front-end developer specializing in building comprehensive item list pages and creating functional filter buttons. He ensures a seamless user experience through intuitive design and efficient functionality.</p>
                
  <button class="Link__github">
    <svg
      xmlns="https://github.com/mohammedalgazwani"
      viewBox="0 0 30 30"
      width="30px"
      height="30px"
      class="github"
    >
      <path
        d="M15,3C8.373,3,3,8.373,3,15c0,5.623,3.872,10.328,9.092,11.63C12.036,26.468,12,26.28,12,26.047v-2.051 c-0.487,0-1.303,0-1.508,0c-0.821,0-1.551-0.353-1.905-1.009c-0.393-0.729-0.461-1.844-1.435-2.526 c-0.289-0.227-0.069-0.486,0.264-0.451c0.615,0.174,1.125,0.596,1.605,1.222c0.478,0.627,0.703,0.769,1.596,0.769 c0.433,0,1.081-0.025,1.691-0.121c0.328-0.833,0.895-1.6,1.588-1.962c-3.996-0.411-5.903-2.399-5.903-5.098 c0-1.162,0.495-2.286,1.336-3.233C9.053,10.647,8.706,8.73,9.435,8c1.798,0,2.885,1.166,3.146,1.481C13.477,9.174,14.461,9,15.495,9 c1.036,0,2.024,0.174,2.922,0.483C18.675,9.17,19.763,8,21.565,8c0.732,0.731,0.381,2.656,0.102,3.594 c0.836,0.945,1.328,2.066,1.328,3.226c0,2.697-1.904,4.684-5.894,5.097C18.199,20.49,19,22.1,19,23.313v2.734 c0,0.104-0.023,0.179-0.035,0.268C23.641,24.676,27,20.236,27,15C27,8.373,21.627,3,15,3z"
      ></path>
    </svg>
  </button>
            </div>
            
            <div class="team-card">
                <h3>Edris Khawaji</h3>
                <p>Programer</p>
                <p>Edris Khawaji is a skilled programmer known for creating add, edit, and delete item functionalities. His contributions ensure efficient item management and enhance overall application usability.</p>
                
  <button class="Link__github">
    <svg
      xmlns="https://github.com/OldEdris"
      viewBox="0 0 30 30"
      width="30px"
      height="30px"
      class="github"
    >
      <path
        d="M15,3C8.373,3,3,8.373,3,15c0,5.623,3.872,10.328,9.092,11.63C12.036,26.468,12,26.28,12,26.047v-2.051 c-0.487,0-1.303,0-1.508,0c-0.821,0-1.551-0.353-1.905-1.009c-0.393-0.729-0.461-1.844-1.435-2.526 c-0.289-0.227-0.069-0.486,0.264-0.451c0.615,0.174,1.125,0.596,1.605,1.222c0.478,0.627,0.703,0.769,1.596,0.769 c0.433,0,1.081-0.025,1.691-0.121c0.328-0.833,0.895-1.6,1.588-1.962c-3.996-0.411-5.903-2.399-5.903-5.098 c0-1.162,0.495-2.286,1.336-3.233C9.053,10.647,8.706,8.73,9.435,8c1.798,0,2.885,1.166,3.146,1.481C13.477,9.174,14.461,9,15.495,9 c1.036,0,2.024,0.174,2.922,0.483C18.675,9.17,19.763,8,21.565,8c0.732,0.731,0.381,2.656,0.102,3.594 c0.836,0.945,1.328,2.066,1.328,3.226c0,2.697-1.904,4.684-5.894,5.097C18.199,20.49,19,22.1,19,23.313v2.734 c0,0.104-0.023,0.179-0.035,0.268C23.641,24.676,27,20.236,27,15C27,8.373,21.627,3,15,3z"
      ></path>
    </svg>
  </button>
            </div>
            
            <div class="team-card">
                <h3>Ahmad Al'Loghbi</h3>
                <p>Team information page designer (About page)</p>
                <p>Ahmad Al'Loghbi specializes in designing team information pages, including the "About" page. His work focuses on creating informative and engaging layouts that effectively present team details.</p>
                
  <button class="Link__github">
    <svg
      xmlns="https://github.com/Ahmad-Alloghbi"
      viewBox="0 0 30 30"
      width="30px"
      height="30px"
      class="github"
    >
      <path
        d="M15,3C8.373,3,3,8.373,3,15c0,5.623,3.872,10.328,9.092,11.63C12.036,26.468,12,26.28,12,26.047v-2.051 c-0.487,0-1.303,0-1.508,0c-0.821,0-1.551-0.353-1.905-1.009c-0.393-0.729-0.461-1.844-1.435-2.526 c-0.289-0.227-0.069-0.486,0.264-0.451c0.615,0.174,1.125,0.596,1.605,1.222c0.478,0.627,0.703,0.769,1.596,0.769 c0.433,0,1.081-0.025,1.691-0.121c0.328-0.833,0.895-1.6,1.588-1.962c-3.996-0.411-5.903-2.399-5.903-5.098 c0-1.162,0.495-2.286,1.336-3.233C9.053,10.647,8.706,8.73,9.435,8c1.798,0,2.885,1.166,3.146,1.481C13.477,9.174,14.461,9,15.495,9 c1.036,0,2.024,0.174,2.922,0.483C18.675,9.17,19.763,8,21.565,8c0.732,0.731,0.381,2.656,0.102,3.594 c0.836,0.945,1.328,2.066,1.328,3.226c0,2.697-1.904,4.684-5.894,5.097C18.199,20.49,19,22.1,19,23.313v2.734 c0,0.104-0.023,0.179-0.035,0.268C23.641,24.676,27,20.236,27,15C27,8.373,21.627,3,15,3z"
      ></path>
    </svg>
  </button>
            </div>
            
        </div>
    
    <footer><div class="row mt-3">
                <div class="col text-center">
                    <p class="mb-0">&copy; 2024 Fresh Jobs. All rights reserved.</p>
                </div>
            </div>
       
    </footer>
 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+YoszU1K/knhOryR+YR8+8eR+65M" crossorigin="anonymous"></script>
</body>
</html>
