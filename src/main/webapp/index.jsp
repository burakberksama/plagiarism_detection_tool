<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>İntihal Tespit Aracı</title>
  <link rel="icon" type="image/png" href="favicon.png">
</head>
<body class="d-flex flex-column min-vh-100 bg-light">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h1 class="card-title text-center mb-4">İntihal Tespit Aracı</h1>
                    <h4 class="mb-4">Dosyalarınızı Yükleyin</h4>
                    <form action="upload" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label class="form-label">1. Dosya (.txt):</label>
                            <input type="file" class="form-control" name="file1" accept=".txt" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">2. Dosya (.txt):</label>
                            <input type="file" class="form-control" name="file2" accept=".txt" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Karşılaştır</button>
                    </form>
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