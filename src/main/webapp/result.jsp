<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Sonuçlar</title>
  <link rel="icon" type="image/png" href="favicon.png">
</head>
<body class="d-flex flex-column min-vh-100 bg-light">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h2 class="card-title text-center mb-3">Sonuçlar</h2>
                    <div class="mb-4">
                        <h5>1. Dosyanın İçeriği:</h5>
                        <pre class="bg-light p-2 border rounded">${file1Text}</pre>
                    </div>
                    <div class="mb-4">
                        <h5>2. Dosyanın İçeriği:</h5>
                        <pre class="bg-light p-2 border rounded">${file2Text}</pre>
                    </div>
                    <div class="mb-4">
                        <h4 class="text-success">Benzerlik Oranı: %${similarity}</h4>
                    </div>
                    <a href="index.jsp" class="btn btn-outline-primary w-100">Yeni Karşılaştırma Yap</a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr>
<footer class="text-center mt-3 mb-2 text-muted small">
    &copy; 2025 Burak Berk Şama | Plagiarism Detection Tool
</footer>
</body>
</html>