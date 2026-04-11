<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen DevOps Portal</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #eef2f3, #dfe9f3);
}

/* Header */
header {
    background: linear-gradient(90deg, #4facfe, #00f2fe);
    color: white;
    padding: 30px;
    text-align: center;
    border-radius: 0 0 20px 20px;
}

/* Card Style */
.info-card {
    background: rgba(255,255,255,0.9);
    border-radius: 15px;
    padding: 20px;
    margin: 20px auto;
    max-width: 750px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    transition: 0.3s ease;
}

.info-card:hover {
    transform: translateY(-5px);
}

/* Buttons */
.btn-custom {
    background: linear-gradient(45deg, #007bff, #00c6ff);
    border: none;
    color: white;
}

.btn-custom:hover {
    opacity: 0.9;
}

/* Footer */
footer {
    margin-top: 40px;
    background: #1e1e2f;
    color: #ccc;
    padding: 15px;
    text-align: center;
}
footer a {
    color: #00c6ff;
}
</style>

</head>

<body>

<header>
    <h1>🚀 DevOps Training Portal</h1>
    <p>GCP | AWS | SRE | Real-Time Training</p>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h4>🌐 Server Info</h4>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
        %>
        <p><b>Host:</b> <%= inetAddress.getHostName() %></p>
        <p><b>IP:</b> <%= inetAddress.getHostAddress() %></p>
    </div>

    <!-- Client Info -->
    <div class="info-card">
        <h4>💻 Client Info</h4>
        <hr>
        <p><b>Client IP:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Contact -->
    <div class="info-card text-center">
        <img src="images/kkfunda.jpg" loading="lazy" width="110"
             class="rounded-circle shadow mb-3">
        <h4>KK FUNDA</h4>
        <p>📍 Kukatpally, Hyderabad</p>
        <p>📞 +91-9951232881</p>

        <!-- FIXED email bug -->
        <a href="mailto:praveenrao556@gmail.com" class="btn btn-custom mt-2">
            📧 Contact Us
        </a>
    </div>

    <!-- Services -->
    <div class="info-card text-center">
        <h4>⚙️ Services</h4>
        <a href="services/employee/getEmployeeDetails"
           class="btn btn-success mt-2">
           Get Employee Details
        </a>
    </div>

</div>

<footer>
    <p>© 2026 PRAVEEN FUNDA</p>
    <small>Powered by DevOps Training</small>
</footer>

</body>
</html>
