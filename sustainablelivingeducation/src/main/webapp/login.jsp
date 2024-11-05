<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            display: flex;
            height: 100vh; /* Full height to center vertically */
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

        .container {
            display: flex; /* Flexbox for alignment */
            margin-left: 300px; /* Adjust for sidebar */
            align-items: center; /* Center vertically */
            flex-grow: 1; /* Allow it to grow */
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 460px;
            margin-right: 20px; /* Space between login box and image */
        }

        h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
            font-weight: 600;
            color: #333;
        }

        .form-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        label {
            font-size: 14px;
            font-weight: 400;
            color: #555;
            flex: 0 0 30%;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 68%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
        }

        .password-container {
            position: relative;
        }

        .password-container input[type="password"] {
            width: 92%;
        }

        .toggle-password {
            position: absolute;
            top: 50%;
            right: 12px;
            transform: translateY(-50%);
            cursor: pointer;
            color: #888;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #5d9cec;
            border: none;
            border-radius: 8px;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #4a82d4;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            font-size: 14px;
            color: #5d9cec;
            text-decoration: none;
            text-align: center;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 20px;
        }
        .image-container {
            flex: 1; /* Allow image container to take up available space */
            display: flex; /* Center image vertically */
            justify-content: center;
        }

        .image-container img {
            max-width: 100%; /* Make sure image doesn't overflow */
            height: auto; /* Maintain aspect ratio */
            border-radius: 12px; /* Optional: Rounded corners */
        }

        @media (max-width: 768px) {
            .login-container {
                max-width: 320px;
            }

            .navbar {
                width: 200px;
            }

            .form-group {
                flex-direction: column;
                align-items: flex-start;
            }

            label {
                margin-bottom: 5px;
                flex: 1;
            }

            input, select {
                width: 100%;
            }
        }

        @media (max-width: 576px) {
            .navbar {
                width: 180px;
            }

            .login-container {
                margin-left: 200px;
            }
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
    </div>

    <div class="container">
        <div class="login-container">
            <h1>Login</h1>
            <form action="loginServlet" method="post">
                <div class="error-message"><!-- Error message placeholder (if any) --></div>

                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>

                <div class="form-group password-container">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <span class="toggle-password" onclick="togglePassword()">👁</span>
                </div>

                <div class="form-group">
                    <label for="role">Role:</label>
                    <select id="role" name="role" required>
                        <option value="">Select Role</option>
                        <option value="Admin">Admin</option>
                        <option value="Content Creator">Content Creator</option>
                        <option value="User">User (Student)</option>
                        <option value="Mentor">Mentor/Facilitator</option>
                        <option value="Guest">Guest User</option>
                    </select>
                </div>

                <button type="submit">Login</button>
            </form>
            <a class="back-link" href="index.jsp">Back to Home</a>
        </div>

        <!-- Image Container -->
        <div class="image-container">
            <img src="https://mir-s3-cdn-cf.behance.net/project_modules/fs/78c4af118001599.608076cf95739.jpg" alt="Illustration">
        </div>
    </div>

    <script>
        function togglePassword() {
            const passwordField = document.getElementById('password');
            const toggleIcon = document.querySelector('.toggle-password');
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleIcon.textContent = '🙈';
            } else {
                passwordField.type = 'password';
                toggleIcon.textContent = '👁';
            }
        }
    </script>

</body>
</html>