<%-- 
    Document   : Login
    Created on : Apr 28, 2022, 9:02:16 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Fredoka" rel="stylesheet" type="text/css">
        <link href="assets/css/signupin.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>

    </head>

    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <h1 style="position: relative; text-align: center; top: 80px;">Create Account</h1>
                <form action="signup" method="POST">
                    <input class="inp" type="text" name="user" placeholder="UserName" value ="${username1}"/>
                    <input class="inp" type="password" name="pass" placeholder="Password" value="${password1}" (6 characters minimum)" minlength="6"/>
                    <input class="inp" type="password" name="repass" value="${repassword1}" placeholder="Repeat Password"  minlength="6"/>
                    <p style="color:red">${passwordincorrect}${presentusername} </p>
                    
                    <button style="cursor: pointer;" type="submit">Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="login" method="POST">
                    <h1 style="position: relative; bottom: 10px">Sign In</h1>
                    <p style ="color :red">${mess}</p>
                    <input type="text" name="user" value="${username}" id="inputEmail" placeholder="UserName" required="" autofocus=""/>
                    <input type="password" name="pass" value="${password}" id="inputPassword" placeholder="Password" required=""/>
                    <div class="form-group form-check">
                        <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    </div>
                    <a href="#">Forgot your password?</a>
                    <button style="cursor: pointer;" type="submit">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button style="cursor: pointer;" class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button style="cursor: pointer;" class="ghost" id="signUp">Sign Up</button>

                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="assets/js/signupin.js"></script>
    </body>
</html>
