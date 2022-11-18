<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./css/info_style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
  <script>
    var myModal = document.getElementById('myModal')
    var myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', function () {
      myInput.focus()
    })
  </script>
  <script>
    function validateForm() {
      var name = document.edit_form.name;
      if (name.value == "") {
        alert("Please enter your name");
        name.focus();
        return false;
      }

      var gender = document.edit_form.gender;
      if (gender.value == "") {
        alert("Please enter your gender");
        gender.focus();
        return false;
      }

      var birthday = document.edit_form.birthday;
      if (birthday.value == "") {
        alert("Please enter your birthday");
        birthday.focus();
        return false;
      }

      var id = document.edit_form.id;
      if (id.value == "") {
        alert("Please enter your student id");
        id.focus();
        return false;
      }

      var grade = document.edit_form.grade;
      if (grade.value == "") {
        alert("Please enter your grade");
        grade.focus();
        return false;
      }

      var department = document.edit_form.department;
      if (department.value == "") {
        alert("Please enter your department");
        department.focus();
        return false;
      }

      var email = document.edit_form.email;
      if (email.value == "") {
        alert("Please enter your email");
        email.focus();
        return false;
      }

      var phone = document.edit_form.phone;
      if (phone.value == "") {
        alert("Please enter your phone number");
        phone.focus();
        return false;
      }
    }
  </script>
  <title>Document</title>
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
    .items {
      margin: 10px;
    }
  </style>
</head>
<body>
<div class="container-fluid">
  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="POST.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <span class="fs-4">HGU Manager</span>
      </a>

      <ul class="nav nav-pills justify-content-center">
        <li class="nav-item"><a href="POST.jsp" class="nav-link active" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="ADDPOSTFORM2.jsp" class="nav-link">Add</a></li>
        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
      </ul>
    </header>
  </div>
  <div class="container text-center py-5" id="jumbo">
    <h1 class="display-5 fw-bold">Edit Student Information Here</h1>
    <p class="fs-4"><span id="intro">This form can help every teacher to edit student information more effectively.</span></p>
  </div>
  <div class="container">
    <table class="table">
      <thead>
      <tr>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <th scope="row">Name</th>
        <td> 홍길동 </td>
      </tr>
      <tr>
        <th scope="row">Gender</th>
        <td> X </td>
      </tr>
      <tr>
        <th scope="row">Birthday</th>
        <td> YYYY/MM/DD </td>
      </tr>
      <tr>
        <th scope="row">Student ID</th>
        <td> XXXXXXXX </td>
      </tr>
      <tr>
        <th scope="row">Grade</th>
        <td> X학년 </td>
      </tr>
      <tr>
        <th scope="row">Department</th>
        <td> X학부 </td>
      </tr>
      <tr>
        <th scope="row">Email</th>
        <td> X@handong.ac.kr </td>
      </tr>
      <tr>
        <th scope="row">Phone</th>
        <td> 010-XXXX-XXXX </td>
      </tr>
      </tbody>
    </table>

    <!-- Button trigger modal -->
    <div class="text-center">
      <button type="button" class="btn btn-secondary btn-custom" data-bs-toggle="modal" data-bs-target="#editModal">Edit</button>
      <button type="button" class="btn btn-danger btn-custom" data-bs-toggle="modal" data-bs-target="#deleteModal">Delete</button>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editModalLabel">Edit</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form name="edit_form" method="post" onsubmit="return validateForm()">
              <div class="items">
                <label for="name">Name:</label>
                <input type="text" class="form-control" name="name" id="name">
              </div>
              <div class="items">
                <label>Gender:</label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" value="Male" id="flexRadioDefault1">
                  <label class="form-check-label" for="flexRadioDefault1">Male</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" value="Female" id="flexRadioDefault2" checked>
                  <label class="form-check-label" for="flexRadioDefault2">Female</label>
                </div>
              </div>
              <div class="items">
                <label for="birthday">Birthday:</label>
                <input type="date" class="form-control" name="birthday" id="birthday">
              </div>
              <div class="items">
                <label for="id">Student ID:</label>
                <input type="text" class="form-control" name="id" id="id">
              </div>
              <div class="items">
                <label for="grade">Grade:</label>
                <select class="form-control" name="grade" id="grade">
                  <option>1학년</option>
                  <option>2학년</option>
                  <option>3학년</option>
                  <option>4학년</option>
                </select>
              </div>
              <div class="items">
                <label for="department">Department:</label>
                <input type="text" class="form-control" name="department" id="department">
              </div>
              <div class="items">
                <label for="email">Email:</label>
                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <input id="email" type="text" class="form-control" name="email" placeholder="simpson@handong.ac.kr">
                </div>
              </div>
              <div class="items">
                <label for="phone">Phone number:</label>
                <input type="tel" class="form-control" id="phone" name="phone" placeholder="010-xxxx-xxxx" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="deleteModalLabel">Delete</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            Are you sure that you want to delete the information?
          </div>
          <div class="modal-footer">
            <form name="delete_form">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-danger">Delete</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
