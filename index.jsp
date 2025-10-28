<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Student Management — Welcome</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-white shadow-sm bg-white sticky-top">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="#">
      <div class="brand-mark">SM</div>
      <span class="ms-2 brand-text">Student Management</span>
    </a>
    <div class="collapse navbar-collapse" id="navmenu">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="ViewStudents">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="NewFile.jsp">Add Student</a></li>
      </ul>
    </div>
  </div>
</nav>
<section class="py-5">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6">
        <h1 class="display-6 mb-3">Manage students with clarity and speed</h1>
        <p class="lead text-muted">A clean interface to add, edit, view and remove students. Built for productivity and readability.</p>
        <div class="mt-4">
          <a href="ViewStudents" class="btn btn-primary btn-lg me-2"><i class="bi bi-people-fill me-2"></i> View Students</a>
          <a href="NewFile.jsp" class="btn btn-outline-primary btn-lg"><i class="bi bi-plus-lg me-2"></i> Add Student</a>
        </div>
      </div>
      <div class="col-lg-6 d-none d-lg-block">
        <div class="card shadow-sm border-0">
          <div class="card-body py-5 text-center">
            <img src="https://images.unsplash.com/photo-1529070538774-1843cb3265df?q=80&w=800&auto=format&fit=crop" alt="students" class="img-fluid rounded">
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<footer class="py-4 bg-white border-top">
  <div class="container text-center small text-muted">© 2025 Student Management — Clean & Professional</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>