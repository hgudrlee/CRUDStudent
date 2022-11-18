<?php
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $birthday = $_POST['birthday'];
    $id = $_POST['id'];
    $grade = $_POST['grade'];
    $department = $_POST['department'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <title>Document</title>
    <style>

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="./index.html" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
                <span class="fs-4">HGU Manager</span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="./index.html" class="nav-link active" aria-current="page">Home</a></li>
                <li class="nav-item"><a href="./add.html" class="nav-link">Add</a></li>
                <li class="nav-item"><a href="#" class="nav-link">About</a></li>
            </ul>
        </header>
    </div>
    <div class="container text-center py-5">
        <h1 class="display-5 fw-bold">Added!</h1>
        <p class="fs-4">Please check the added information below.</p>
    </div>
    <div class="container">
        <table class="table">
            <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">Name</th>
                <td><?= $name?></td>
            </tr>
            <tr>
                <th scope="row">Gender</th>
                <td><?= $gender?></td>
            </tr>
            <tr>
                <th scope="row">Birthday</th>
                <td><?= $birthday?></td>
            </tr>
            <tr>
                <th scope="row">Student ID</th>
                <td><?= $id?></td>
            </tr>
            <tr>
                <th scope="row">Grade</th>
                <td><?= $grade?></td>
            </tr>
            <tr>
                <th scope="row">Department</th>
                <td><?= $department?></td>
            </tr>
            <tr>
                <th scope="row">Email</th>
                <td><?= $email?></td>
            </tr>
            <tr>
                <th scope="row">Phone</th>
                <td><?= $phone?></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
