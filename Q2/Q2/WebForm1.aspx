<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Q2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(to right, #1cb5e0, #178e68);
    color: white;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: white;
}

.container {
    background: rgba(0, 0, 0, 0.6);
    padding: 30px 20px;
    border-radius: 8px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.3);
    width: 400px;
}

.login-form h3 {
    text-align: center;
    margin-bottom: 10px;
}

.login-form p {
    text-align: center;
    margin-bottom: 20px;
    font-size: 14px;
    color: #ccc;
}

input[type="text"],
input[type="password"] {
    width: 95%;
    padding: 10px;
    margin-bottom: 15px;
    border: none;
    border-radius: 5px;
    outline: none;
    font-size: 16px;
}

.options {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.options label {
    font-size: 14px;
    cursor: pointer;
}

.options .forgot-password {
    color: #00bcd4;
    text-decoration: none;
    font-size: 14px;
}

.options .forgot-password:hover {
    text-decoration: underline;
}

button.login-button {
    width: 100%;
    padding: 10px;
    background-color: black;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
}

button.login-button:hover {
    background-color: #333;
}

.register {
    text-align: center;
    margin-top: 10px;
    font-size: 14px;
}

.register a {
    color: #00bcd4;
    text-decoration: none;
    font-weight: bold;
}

.register a:hover {
    text-decoration: underline;
}

    </style>
    <h2>Login form using HTML and CSS</h2>
    <div class="container">
        <div class="login-form">
            <h3>Sign in</h3>
            <p>Sign in with your username and password</p>
            <form>
                <label for="username">Your username</label><br /><br />
                <input type="text" id="username" placeholder="Enter Username" required />

                <label for="password">Your password</label><br /><br />
                <input type="password" id="password" placeholder="Enter Password" required />

                <div class="options">
                    <label>
                        <input type="checkbox" /> Remember me
                    </label>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>

                <button type="submit" class="login-button">Login</button>

                <p class="register">
                    Not a member? <a href="#">Register here!</a>
                </p>
            </form>
        </div>
    </div>
</asp:Content>