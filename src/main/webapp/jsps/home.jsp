<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen Pathange | DevOps Engineer</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        color: #fff;
    }

    header {
        text-align: center;
        padding: 40px 20px;
    }

    header h1 {
        font-weight: 600;
        font-size: 2.5rem;
    }

    header p {
        font-size: 1.1rem;
        color: #ccc;
    }

    .card-custom {
        background: rgba(255, 255, 255, 0.1);
        border-radius: 15px;
        backdrop-filter: blur(10px);
        box-shadow: 0 8px 32px rgba(0,0,0,0.3);
        padding: 25px;
        margin: 20px 0;
    }

    .btn-custom {
        background: linear-gradient(45deg, #00c6ff, #0072ff);
        border: none;
        color: white;
        padding: 10px 20px;
        border-radius: 30px;
        transition: 0.3s;
    }

    .btn-custom:hover {
        transform: scale(1.05);
        background: linear-gradient(45deg, #0072ff, #00c6ff);
    }

    footer {
        text-align: center;
        margin-top: 40px;
        padding: 20px;
        background: rgba(0,0,0,0.5);
    }

    .highlight {
        color: #00c6ff;
        font-weight: 600;
    }
</style>

</head>

<body>

<header>
    <h1>🚀 Welcome to My DevOps Portfolio</h1>
    <p>Hi, I'm <span class="highlight">Praveen Pathange</span> | DevOps Engineer</p>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="card-custom">
        <h4>🌐 Server Information</h4>
        <hr style="color:white;">
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
        %>
        <p><b>Host Name:</b> <%= inetAddress.getHostName() %></p>
        <p><b>IP Address:</b> <%= inetAddress.getHostAddress() %></p>
    </div>

    <!-- Client Info -->
    <div class="card-custom">
        <h4>💻 Client Information</h4>
        <hr style="color:white;">
        <p><b>Client IP:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Personal Info -->
    <div class="card-custom text-center">
        <h3>👤 Praveen Pathange</h3>
        <p><b>📍 Location:</b> Hyderabad</p>
        <p><b>📞 Phone:</b> 9951232881</p>
        <p><b>📧 Email:</b> praveen@gmail.com</p>

        <a href="mailto:praveen@example.com" class="btn btn-custom mt-2">Contact Me</a>
    </div>

    <!-- Services -->
    <div class="card-custom text-center">
        <h4>⚙️ My Services</h4>
        <p>DevOps | AWS | CI/CD | Kubernetes</p>
        <a href="services/employee/getEmployeeDetails" class="btn btn-custom">View Employee Details</a>
    </div>

</div>

<footer>
    <p>© 2026 Praveen Pathange</p>
    <p>Built with ❤️ using JSP & Bootstrap</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
