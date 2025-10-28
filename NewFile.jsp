<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Add Student</title>
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
        <li class="nav-item"><a class="nav-link" href="ViewStudents">Back to Dashboard</a></li>
      </ul>
    </div>
  </div>
</nav>
<main class="container py-5">
  <div class="row justify-content-center">
    <div class="col-lg-7">
      <div class="card shadow-sm">
        <div class="card-body">
          <h3 class="mb-3">${param.id != null ? 'Edit Student' : 'Add New Student'}</h3>
          <form action="${param.id != null ? 'SaveEditedStudent' : 'RegistrationController'}" method="post">
            <input type="hidden" name="id" value="${student != null ? student.id : ''}">
            <div class="mb-3">
              <label class="form-label">Full name</label>
              <input required name="name" value="${student != null ? student.name : ''}" class="form-control" placeholder="e.g., Rahul Sharma">
            </div>
            <div class="mb-3">
              <label class="form-label">Email</label>
              <input required type="email" name="email" value="${student != null ? student.email : ''}" class="form-control" placeholder="e.g., name@example.com">
            </div>
            <div class="mb-3 row">
              <div class="col-md-6">
                <label class="form-label">Course</label>
                <input name="course" value="${student != null ? student.course : ''}" class="form-control" placeholder="e.g., B.Sc, MCA">
              </div>
              <div class="col-md-6">
                <label class="form-label">Phone</label>
                <input name="phone" value="${student != null ? student.phone : ''}" class="form-control" placeholder="10-digit number">
              </div>
            </div>
            <div class="d-flex justify-content-end mt-4">
              <a href="ViewStudents" class="btn btn-light me-2">Cancel</a>
              <button type="submit" class="btn btn-primary">${param.id != null ? 'Save changes' : 'Create student'}</button>
            </div>
          </form>
        </div>
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