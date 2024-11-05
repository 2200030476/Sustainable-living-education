<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sustainable Living Education</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            background-color: #2b6777;
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
        }

        .navbar a {
            display: block;
            color: white;
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            text-align: left;
        }

        .navbar a:hover {
            background-color: #52ab98;
        }

        .content-container {
            margin-left: 250px;
            width: calc(100% - 250px);
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .hero {
            text-align: center;
            padding: 50px 20px;
            background-color: #3a8a97;
            background-image: url('https://media.licdn.com/dms/image/D4D22AQEHHGNtGf4V8Q/feedshare-shrink_800/0/1685733525777?e=2147483647&v=beta&t=AfbFXP2Og-Ed67_aie2W1-wZqpX0o9QodtDYp6f39p4');
            background-size: cover;
            background-position: center;
            color: white;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            box-shadow: inset 0 0 0 1000px rgba(0,0,0,0.4);
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
        }

        .hero p {
            font-size: 24px;
            width: 60%;
            margin: 0 auto;
            text-align: center;
            font-weight: 300;
        }

        .content {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .content h2 {
            font-size: 36px;
            color: #2b6777;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            width: 80%;
            margin: 0 auto;
            line-height: 1.8;
            color: #555;
        }

        .footer {
            background-color: #2b6777;
            color: white;
            text-align: center;
            padding: 20px;
            margin-left: 250px;
            width: calc(100% - 250px);
        }

        @media (max-width: 768px) {
            .navbar {
                width: 200px;
            }

            .content-container {
                margin-left: 200px;
                width: calc(100% - 200px);
            }

            .footer {
                margin-left: 200px;
                width: calc(100% - 200px);
            }
        }

        @media (max-width: 576px) {
            .navbar {
                width: 180px;
            }

            .content-container {
                margin-left: 180px;
                width: calc(100% - 180px);
            }

            .footer {
                margin-left: 180px;
                width: calc(100% - 180px);
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="wsl.jsp">Why Sustainable Living?</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
        <a href="about.jsp">About</a>
    </div>

    <div class="content-container">

        <div class="hero">
            <h1>Sustainable Living Education</h1>
            <p>Empowering the next generation to live sustainably for a better future.</p>
        </div>

        <div class="content">
            <h2>What is Sustainable Living?</h2>
            <p>
                Sustainable living is about making choices that reduce our environmental impact and contribute to the well-being of future generations. 
                From conserving energy and water to reducing waste and using renewable resources, it involves simple lifestyle changes that have a lasting impact on the planet.
            </p>
            <h2>Why is it Important?</h2>
            <p>
                Living sustainably helps mitigate climate change, conserve natural resources, and promote biodiversity. By embracing sustainable practices, 
                we ensure that future generations have access to clean air, water, and land while fostering a healthier and more equitable society.
            </p>
            <h2>How Can You Get Involved?</h2>
            <p>
                Sustainable living begins with awareness and education. Start by learning about how your daily actions impact the environment. 
                Explore sustainable alternatives for energy, food, and transportation, and find ways to reduce waste and conserve resources.
            </p>
        </div>

        <div class="footer">
            <p>&copy; 2024 Sustainable Living Education | All Rights Reserved</p>
        </div>

    </div>

</body>
</html>
