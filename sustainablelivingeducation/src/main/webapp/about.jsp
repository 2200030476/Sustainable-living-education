<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Sustainable Living Education</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            display: flex; /* Use flex for layout */
            height: 100vh; /* Full height to fill the screen */
            overflow: hidden; /* Prevent scrolling */
        }

        /* Sidebar styling */
        .navbar {
            background-color: #2b6777;
            width: 250px;
            height: 100vh; /* Full height of the viewport */
            position: fixed;
            top: 0;
            left: 0;
            overflow-y: auto; /* Enable scrolling if needed */
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            z-index: 1000; /* Ensure it stays above other content */
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

        /* Content area styling */
        .container {
            margin-left: 250px; /* Adjust for sidebar */
            width: calc(100% - 250px); /* Full width minus navbar width */
            padding: 40px 20px; /* Padding for content */
            overflow-y: auto; /* Enable scrolling if needed */
        }

        /* About section styling */
        .about {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .about h1 {
            font-size: 36px;
            color: #2b6777;
            margin-bottom: 20px;
        }

        .about p {
            font-size: 18px;
            margin: 0 auto;
            line-height: 1.8;
            color: #555;
            margin-bottom: 30px;
        }

        .about img {
            width: 60%;
            border-radius: 10px;
            margin-top: 20px;
        }

        /* Footer */
        .footer {
            background-color: #2b6777;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Sidebar Navigation Bar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
    </div>

    <!-- Content Area -->
    <div class="container">
        <!-- About Section -->
        <div class="about">
            <h1>About Us</h1>
            <p>
                Sustainable Living Education is dedicated to educating and empowering individuals to make environmentally responsible choices. 
                Our mission is to inspire the next generation to adopt sustainable practices that contribute to a healthier planet. 
                We believe that education is the key to building a sustainable future.
            </p>
            <p>
                Through interactive lessons, engaging projects, and community involvement, we aim to foster a culture of sustainability. 
                Our resources are designed to help individuals of all ages understand the impact of their choices and encourage them to take action.
            </p>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoqyT9RtwNKmZt39H2Im0tnEGA16E3orHNpQ&s" alt="Sustainable Living Education">
        </div>
        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2024 Sustainable Living Education | All Rights Reserved</p>
        </div>
    </div>

</body>
</html>