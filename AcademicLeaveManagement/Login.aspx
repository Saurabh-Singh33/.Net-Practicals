
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AcademicLeaveManagement.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Student Login</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .login-box {
            width: 350px;
            margin: 100px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #aaa;
        }

        .login-box h2 {
            text-align: center;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .message {
            color: red;
            text-align: center;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="login-box">

        <h2>Student Login</h2>

        <asp:Label ID="lblUsername" runat="server"
            Text="Username"></asp:Label>

        <asp:TextBox ID="txtUsername" runat="server"
            CssClass="input"></asp:TextBox>

        <asp:Label ID="lblPassword" runat="server"
            Text="Password"></asp:Label>

        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password"
            CssClass="input"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server"
            Text="Login"
            CssClass="btn"
            OnClick="btnLogin_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server"
            CssClass="message"></asp:Label>

    </div>

</form>

</body>
</html>
```
