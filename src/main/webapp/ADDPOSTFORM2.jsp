<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          birthday="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" birthday="ie=edge">
    <link rel="stylesheet" href="./css/info_style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script>
        function validateForm() {
            var name = document.form.name;
            if (name.value == "") {
                alert("Please enter your name");
                name.focus();
                return false;
            }

            var gender = document.form.gender;
            if (gender.value == "") {
                alert("Please enter your gender");
                gender.focus();
                return false;
            }

            var birthday = document.form.birthday;
            if (birthday.value == "") {
                alert("Please enter your birthday");
                birthday.focus();
                return false;
            }

            var id = document.form.studentid;
            if (id.value == "") {
                alert("Please enter your student id");
                id.focus();
                return false;
            }

            var grade = document.form.grade;
            if (grade.value == "") {
                alert("Please enter your grade");
                grade.focus();
                return false;
            }

            var department = document.form.department;
            if (department.value == "") {
                alert("Please enter your department");
                department.focus();
                return false;
            }

            var email = document.form.email;
            if (email.value == "") {
                alert("Please enter your email");
                email.focus();
                return false;
            }

            var phone = document.form.phone;
            if (phone.value == "") {
                alert("Please enter your phone number");
                phone.focus();
                return false;
            }
        }
    </script>
    <style>
        .btn-custom {
            width: 200px;
            margin: 1rem 0.2rem 0 0.2rem;
        }
        .well {
            padding: 10px;
            height: 100px;
            background-color: aliceblue;
            border-radius: 10px;
            margin: 5px;
        }
        label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        #footer {
            height: 100px;
            margin-top: 50px;
        }
        #file {
            margin-top: 10px;
        }
        #input-photo {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="./POSTS2.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <span class="fs-4">HGU Manager</span>
            </a>

            <ul class="nav nav-pills justify-content-center">
                <li class="nav-item"><a href="./POSTS2.jsp" class="nav-link active" aria-current="page">Home</a></li>
                <li class="nav-item"><a href="./ADDPOSTFORM2.jsp" class="nav-link">Add</a></li>
                <li class="nav-item"><a href="#" class="nav-link">About</a></li>
            </ul>
        </header>
    </div>
    <div class="container text-center py-5" id="jumbo">
        <h1 class="display-5 fw-bold">Add Student Information Here</h1>
        <p class="fs-4"><span id="intro">This form can help every teacher to add student information more effectively.</span></p>
    </div>
    <div class="container">
        <form name="form" method="post" action="./ADDPOST2.jsp" onsubmit="return validateForm()" enctype="multipart/form-data">
            <div class="row">
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" name="name" id="name">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label>Gender:</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" value="Male" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Male
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" value="Female" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                Female
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="birthday">Birthday:</label>
                        <input type="date" class="form-control" name="birthday" id="birthday">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="studentid">Student ID:</label>
                        <input type="text" class="form-control" name="studentid" id="studentid">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="grade">Grade:</label>
                        <select class="form-control" name="grade" id="grade">
                            <option>1학년</option>
                            <option>2학년</option>
                            <option>3학년</option>
                            <option>4학년</option>
                        </select>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="department">Department:</label>
                        <input type="text" class="form-control" name="department" id="department">
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="email">Email:</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="email" type="text" class="form-control" name="email" placeholder="simpson@handong.ac.kr">
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="well">
                        <label for="phone">Phone number:</label>
                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="010-xxxx-xxxx" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xs-12">
                    <div class="d-flex justify-content-center" id="file">
                        <label for="photo" id="input-photo">Photo:</label>
                        <input type="file" name="photo" id="photo">
                    </div>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-custom">Add</button>
                <button type="reset" class="btn btn-secondary btn-custom">Cancel</button>
            </div>
        </form>
        <div id="footer">

        </div>
    </div>
</div>
</body>
</html>