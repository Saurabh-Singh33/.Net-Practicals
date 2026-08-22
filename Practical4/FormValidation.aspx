<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormValidation.aspx.cs" Inherits="Practical4.FormValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Form Validation</title>
</head>

<body>

    <form id="form1" runat="server">

        <h2>Registration Form</h2>

        <!-- Name -->
        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>

        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvName"
            runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br /><br />


        <!-- Email -->
        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>

        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            ErrorMessage="Enter a valid email"
            ForeColor="Red">
        </asp:RegularExpressionValidator>

        <br /><br />


        <!-- Password -->
        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>

        <asp:TextBox
            ID="txtPassword"
            runat="server"
            TextMode="Password">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvPassword"
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br /><br />


        <!-- Confirm Password -->
        <asp:Label ID="lblConfirmPassword" runat="server"
            Text="Confirm Password: ">
        </asp:Label>

        <asp:TextBox
            ID="txtConfirmPassword"
            runat="server"
            TextMode="Password">
        </asp:TextBox>

        <asp:CompareValidator
            ID="cvPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords do not match"
            ForeColor="Red">
        </asp:CompareValidator>

        <br /><br />


        <!-- Age -->
        <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label>

        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvAge"
            runat="server"
            ControlToValidate="txtAge"
            ErrorMessage="Age is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RangeValidator
            ID="rvAge"
            runat="server"
            ControlToValidate="txtAge"
            MinimumValue="18"
            MaximumValue="60"
            Type="Integer"
            ErrorMessage="Age must be between 18 and 60"
            ForeColor="Red">
        </asp:RangeValidator>

        <br /><br />


        <!-- Gender -->
        <asp:Label ID="lblGender" runat="server"
            Text="Gender: ">
        </asp:Label>

        <asp:RadioButtonList ID="rblGender" runat="server">
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator
            ID="rfvGender"
            runat="server"
            ControlToValidate="rblGender"
            ErrorMessage="Please select gender"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br />

        <!-- Submit -->
        <asp:Button
            ID="btnSubmit"
            runat="server"
            Text="Register"
            OnClick="btnSubmit_Click" />

        <br /><br />

        <asp:Label
            ID="lblMessage"
            runat="server">
        </asp:Label>

    </form>

</body>
</html>