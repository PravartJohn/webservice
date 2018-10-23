<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Badminton Court Booking System With NFC Technology<br />
            <br />
            Customer&#39;s information<br />
            First Name&nbsp; :
            <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
            <br />
            Last Name&nbsp; :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
            <br />
            <br />
            Court&#39;s details<br />
            Court type&nbsp;&nbsp; :
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Wooden floor" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="Court" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Cement floor" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="Court" />
            <br />
            Playing hours :
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter integer only" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Payment method"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>Cash</asp:ListItem>
                <asp:ListItem>Debit Card</asp:ListItem>
                <asp:ListItem>PayPal</asp:ListItem>
            </asp:CheckBoxList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
