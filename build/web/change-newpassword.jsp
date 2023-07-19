<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!--Author: DPV-->
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>QPS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/q-icon.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />


    </head>

    <body>


        <p class="text-center h1 fw-bold ">Change Password</p>
        <form class="mx-1 mx-md-4" action="forgetPassword" method="post">


            <div class="form-outline flex-fill mb-0">
                <label class="form-label" for="form3Example1c">Enter UserName</label>
                <input type="text" id="form3Example1c" class="form-control" required name="user"/>
            </div>



            <div class="form-outline flex-fill mb-0">
                <label class="form-label" for="form3Example1c">New Password</label>
                <input type="text" id="form3Example1c" class="form-control" required name="newPassword"/>
            </div>


            <div class="form-outline flex-fill mb-0">
                <label class="form-label" for="form3Example3c">Confirm Password</label>
                <input type="text" id="form3Example3c" class="form-control" required name="confirmPassword"/>
            </div>

            <div class="text-danger"><b>${mess}</b></div>
            <div class="text-center">
                <button class="btn btn-primary " type="submit">Confirm</button>
            </div>

            <div class="text-center">
                <a href="login">Back to Login</a>
            </div>
        </form>


    </body>
</html>