<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #1f2937;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            background-color: white;
            border-radius: 15px;
            width: 100%;
            max-width: 800px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            overflow: hidden;
        }

        .left-panel {
            background-color: #d9d9d9;
            color: white;
            padding: 40px 30px;
            width: 40%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .left-panel img {
            width: 150px;
            height: 195px;
            margin-bottom: 20px;
        }

        .left-panel p {
            font-size: 18px;
            font-weight: bold;
        }

        .form-panel {
            padding: 30px;
            width: 60%;
        }
        

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #374151;
        }

        .form-step { display: none; }
        .form-step.active { display: block; }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #374151;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            background-color: #f9fafb;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 10px 20px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            font-size: 15px;
        }

        button:hover { background-color: #1d4ed8; }

        .text-center {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .text-center a {
            color: #2563eb;
            font-weight: bold;
            text-decoration: none;
        }

        .text-center a:hover { text-decoration: underline; }

        @media (max-width: 768px) {
            .container { flex-direction: column; }
            .left-panel, .form-panel { width: 100%; }
            .left-panel { padding: 20px; font-size: 16px; }
        }
    </style>
</head>
<body>

<div class="container">
    <!-- ✅ Zone gauche -->
    <div class="left-panel" id="stepMessage">
        <img src="./image/Copilot_20250801_135631-removebg-preview.png" alt=" ">
        <p>Remplissez vos informations personnelles</p>
    </div>

    <!-- ✅ Zone droite -->
    <div class="form-panel">
    
        <h2>Créer un compte</h2>

        <form action="RegisterServlet" method="post" id="registrationForm">
            <!-- Étape 1 -->
            <div class="form-step active" id="step1">
                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom" required>

                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <div class="button-group">
                    <span></span>
                    <button type="button" onclick="nextStep()">Suivant</button>
                </div>
            </div>

            <!-- Étape 2 -->
            <div class="form-step" id="step2">
            
            <label for="password">Role</label>
                <input type="text" id="role" name="role" required>
            
                <label for="password">Mot de passe</label>
                <input type="password" id="password" name="password" required>

                <label for="confirmPassword">Confirmer le mot de passe</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>

                <div class="button-group">
                    <button type="button" onclick="prevStep()">Retour</button>
                    <button type="submit">S'inscrire</button>
                </div>
            </div>
        </form>

        <div class="text-center">
            Vous avez déjà un compte ? <a href="login.jsp">Se connecter</a>
        </div>
    </div>
</div>

<script>
    function nextStep() {
        document.getElementById("step1").classList.remove("active");
        document.getElementById("step2").classList.add("active");
        document.getElementById("stepMessage").innerHTML = `
        	 <img src="./image/Copilot_20250801_135631-removebg-preview.png" alt=" ">
            <p>Créez un mot de passe sécurisé</p>
        `;
    }

    function prevStep() {
        document.getElementById("step2").classList.remove("active");
        document.getElementById("step1").classList.add("active");
        document.getElementById("stepMessage").innerHTML = `
        	 <img src="./image/Copilot_20250801_135631-removebg-preview.png" alt=" ">
            <p>Remplissez vos informations personnelles</p>
        `;
    }
</script>

</body>
</html>
