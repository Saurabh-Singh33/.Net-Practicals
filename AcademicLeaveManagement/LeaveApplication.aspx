
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveApplication.aspx.cs"
    Inherits="AcademicLeaveManagement.LeaveApplication" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>Leave Application</title>

    <style>

        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 700px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #aaa;
        }

        h2 {
            text-align: center;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        .calendar {
            margin-top: 15px;
        }

        .submit {
            padding: 10px 25px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        .logout {
            float: right;
        }

        .success {
            color: green;
            font-weight: bold;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <asp:Button ID="btnLogout"
            runat="server"
            Text="Logout"
            CssClass="logout"
            OnClick="btnLogout_Click" />

        <h2>Leave Application</h2>

        <asp:Label ID="lblWelcome"
            runat="server">
        </asp:Label>

        <br /><br />

        <asp:Label ID="lblApplication"
            runat="server"
            Text="Write your leave application:">
        </asp:Label>

        <br />

        <asp:TextBox ID="txtApplication"
            runat="server"
            CssClass="textbox"
            TextMode="MultiLine"
            Rows="6">
        </asp:TextBox>

        <br /><br />

        <asp:Label ID="lblDate"
            runat="server"
            Text="Select Leave Date:">
        </asp:Label>

        <br />

        <!-- Rich Control: Calendar -->

        <asp:Calendar ID="calLeaveDate"
            runat="server"
            CssClass="calendar"
            OnSelectionChanged="calLeaveDate_SelectionChanged">
        </asp:Calendar>

        <br />

        <asp:Label ID="lblSelectedDate"
            runat="server">
        </asp:Label>

        <br /><br />

        <asp:Button ID="btnSubmit"
            runat="server"
            Text="Submit Leave Application"
            CssClass="submit"
            OnClick="btnSubmit_Click" />

        <br /><br />

        <asp:Label ID="lblMessage"
            runat="server"
            CssClass="success">
        </asp:Label>

    </div>

</form>

</body>
</html>
```
