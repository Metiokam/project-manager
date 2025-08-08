📌 Ko-Task – Système de Gestion de Projet en Java/JEE
📖 Description
Ko-Task est une application web développée en Java/JEE permettant de gérer efficacement les projets, les tâches et la collaboration entre les membres d'une équipe.
Elle offre un tableau de bord intuitif, un suivi des avancements, un système d’authentification sécurisé et des fonctionnalités adaptées aux environnements professionnels.

Ce projet a pour but de :

Centraliser la gestion des projets.

Améliorer la communication et la répartition des tâches.

Fournir une vision claire de l’état d’avancement.

✨ Fonctionnalités principales
🔐 Authentification et gestion des utilisateurs

Inscription & connexion sécurisée

Gestion des rôles (Administrateur, Chef de projet, Membre)

📊 Tableau de bord interactif

Vue globale sur les projets

Suivi de l’avancement via des indicateurs et graphiques

📅 Gestion des projets

Création, modification et suppression

Définition des objectifs et échéances

📝 Gestion des tâches

Attribution aux membres

Suivi de l’état (À faire, En cours, Terminé)

📂 Partage de documents

Téléversement et téléchargement sécurisé de fichiers liés aux projets

🛠️ Technologies utilisées
Technologie	Rôle
Java 17+	Langage principal
Jakarta EE / Servlets & JSP	Backend et rendu côté serveur
Tomcat 10+	Serveur d’application
MySQL 8+	Base de données
JDBC	Communication avec la BDD
HTML5 / CSS3 / JavaScript	Frontend
TailwindCSS (ou Bootstrap)	Mise en forme responsive
Maven	Gestion des dépendances
Git & GitHub	Versioning et collaboration

📂 Structure du projet
bash
Copier
Modifier
Ko-Task/
│── src/main/java/com/kotask/servlet/    # Servlets
│── src/main/java/com/kotask/model/      # Classes métier (POJO)
│── src/main/java/com/kotask/dao/        # Accès aux données
│── src/main/webapp/WEB-INF/             # Fichiers de config JSP
│── src/main/webapp/css/                 # Feuilles de style
│── src/main/webapp/image/               # Ressources images
│── src/main/webapp/js/                  # Scripts JavaScript
│── src/main/webapp/login.jsp            # Page de connexion
│── src/main/webapp/register.jsp         # Page d’inscription
│── pom.xml                              # Dépendances Maven
⚙️ Installation & exécution
1️⃣ Prérequis
Java JDK 17+

Apache Tomcat 10+

MySQL Server 8+

Maven 3+

Git

2️⃣ Cloner le projet
bash
Copier
Modifier
git clone https://github.com/ton-profil/ko-task.git
cd ko-task
3️⃣ Configurer la base de données
Créer une base kotask_db :

sql
Copier
Modifier
CREATE DATABASE kotask_db;
Importer le script SQL (fourni dans database/kotask_db.sql).

4️⃣ Configurer la connexion à la BDD
Modifier src/main/resources/db.properties :

properties
Copier
Modifier
db.url=jdbc:mysql://localhost:3306/kotask_db
db.username=root
db.password=ton_mot_de_passe
5️⃣ Compiler et déployer
bash
Copier
Modifier
mvn clean install
Déployer le .war généré dans Tomcat ou utiliser :

bash
Copier
Modifier
mvn tomcat7:run
6️⃣ Accéder à l’application
bash
Copier
Modifier
http://localhost:8080/ko-task
🖥️ Pages clés
login.jsp → Connexion utilisateur

register.jsp → Inscription

dashboard.jsp → Tableau de bord

project.jsp → Gestion des projets

task.jsp → Gestion des tâches

🔐 Sécurité
Mots de passe hachés avec BCrypt.

Protection contre l’injection SQL via PreparedStatement.

Gestion des sessions avec invalidation à la déconnexion.

📅 Feuille de route (Roadmap)
 Implémenter un chat interne entre membres.

 Ajouter des notifications temps réel avec WebSocket.

 Exporter les projets en PDF.

 Intégrer un Kanban drag-and-drop.

📜 Licence
Ce projet est sous licence MIT – vous êtes libre de l’utiliser, le modifier et le redistribuer.

👨‍💻 Auteur
Nom : [Ton Nom]
Email : [ton.email@example.com]
GitHub : https://github.com/ton-profil
