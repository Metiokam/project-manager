<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image:url(./image/connexion.jpeg);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            background-color: white;
            padding: 30px;
           
            border-radius: 15px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .logo {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 30px;
        }

        .logo img {
            width: 170px;
            height: 140px;
        }

        .text-muted {
            color: #6b7280;
            font-size: 15px;
            text-align: center;
        }

        form {
            margin-top: 20px;
            
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #374151;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            background-color: #f9fafb;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 13px;
        }

        .form-options label {
            font-weight: normal;
        }

        .form-options a {
            color: #6b7280;
            text-decoration: none;
        }

        .form-options a:hover {
            text-decoration: underline;
            color: #1d4ed8;
            
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            font-size: 15px;
        }

        button:hover {
            background-color: #1d4ed8;
        }

        .signup-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #374151;
        }

        .signup-link a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="logo">
        <img src="./image/Copilot_20250801_135631-removebg-preview.png" alt="Logo Ko-task">
        <p class="text-muted">Bienvenue, veuillez vous connecter à votre compte</p>
    </div>

    <%-- Affichage d’un message d’erreur si transmis depuis la servlet --%>
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color: red; font-size: 13px; text-align: center;"><%= error %></p>
    <%
        }
    %>

    <form action="LoginServlet" method="post">
        <div class="form-group">
            <label for="email">Adresse email</label>
            <input type="email" id="email" name="email" placeholder="Entrez votre email" required>
        </div>

        <div class="form-group">
            <label for="password">Mot de passe</label>
            <input type="password" id="password" name="password" placeholder="Entrez votre mot de passe" required>
        </div>

        <div class="form-options">
            <label><input type="checkbox" name="remember"> Se souvenir de moi</label>
            <a href="#">Mot de passe oublié ?</a>
        </div>

        <button type="submit">Se connecter</button>
    </form>

    <div class="signup-link">
        Vous n'avez pas de compte ? <a href="register.jsp">S'inscrire</a>
    </div>
</div>

</body>
</html>
