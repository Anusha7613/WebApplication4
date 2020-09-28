<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication4.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                Home Page
            </h2>
             
            <asp:Button ID="cmdSigIn" runat="server" Text="SignIn" OnClick="cmdSigIn_Click" />
        </div>
    </form>
</body>
</html>
