<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Student Management — Dashboard</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-white shadow-sm bg-white sticky-top">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="index.jsp">
      <div class="brand-mark">SM</div>
      <span class="ms-2 brand-text">Student Management</span>
    </a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="NewFile.jsp">Add Student</a></li>
      </ul>
    </div>
  </div>
</nav>
<main class="container py-5">
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h2 class="h4 mb-0">Students</h2>
    <div>
      <form class="d-flex" action="ViewStudents" method="get">
        <input name="q" class="form-control form-control-sm me-2" placeholder="Search by name, email or course">
        <button class="btn btn-outline-secondary btn-sm" type="submit"><i class="bi bi-search"></i></button>
      </form>
    </div>
  </div>
  <div class="card shadow-sm border-0">
    <div class="card-body p-0">
      <div class="table-responsive">
        <table class="table table-hover mb-0 align-middle">
          <thead class="table-light">
            <tr>
              <th>#</th><th>Name</th><th>Email</th><th>Course</th><th>Phone</th><th class="text-end">Actions</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="s" items="${students}">
              <tr>
                <td>${s.id}</td><td>${s.name}</td><td>${s.email}</td><td>${s.course}</td><td>${s.phone}</td>
                <td class="text-end">
                  <a href="EditStudent?id=${s.id}" class="btn btn-sm btn-outline-primary me-2"><i class="bi bi-pencil"></i> Edit</a>
                  <a href="DeleteStudent?id=${s.id}" class="btn btn-sm btn-outline-danger" onclick="return confirm('Delete this student?');"><i class="bi bi-trash"></i> Delete</a>
                </td>
              </tr>
            </c:forEach>
            <c:if test="${empty students}">
              <tr><td colspan="6" class="text-center text-muted py-4">No students found. <a href='NewFile.jsp'>Add a student</a>.</td></tr>
            </c:if>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</main>
<footer class="py-4 bg-white border-top mt-5">
  <div class="container text-center small text-muted">© 2025 Student Management</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>