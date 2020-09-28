<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="WebApplication4.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
        .auto-style1 {
            float: left;
            height: 305px;
            width: 335px;
        }
        .auto-style2 {
            float: right;
            height: 300px;
            width: 300px;
            margin-left: 27px;
        }
        .container{
            width:1000px;
            height:500px;
        }
        .auto-style3 {
            width: 1085px;
            height: 500px;
        }
        .h2 {
            color: #cc9c9c;
            font-family: 'Microsoft Sans Serif';
            font-size: 30px;
        }

    </style>
    

         
       
</head>
    <body>
    <form id="form1" runat="server">
       <div class="auto-style3">
        <div  class="auto-style2">
            <h2 class="h2">Login as User</h2>
          <table  style="width: 364px; height: 167px;"> 
            <tr>
               <td> <label>User Name</label></td>
               
           <td> <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox></td></tr>
       
         
       <tr> <td><label>Password</label></td>
        <td><asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox></td></tr>
        
        <tr><td>

            </td>
            <td><asp:Button ID="CmdSignIn" runat="server" style="background-color:#cc9c9c" Text="Sign In" /></td></tr>
     
      <tr><td>  <asp:CheckBox ID="CmdRememberMe" runat="server" Text="Remember Me" />
        <asp:Label ID="LblMessageBox" Text="" runat="server" /></td></tr>
              
        </table>
             </div>
        <div class="auto-style1">



            <h2 class="h2">Login as Employee</h2>
          <table style=" width: 364px; height: 167px;"> 
            <tr>
                <td><label>User Id</label></td>
          <td>  <asp:TextBox ID="TxtUserId" runat="server"></asp:TextBox></td></tr>
       
         
       <tr> <td><label>Password</label></td>
       <td> <asp:TextBox ID="TxtPassword1" runat="server"></asp:TextBox></td></tr>
        
        <tr>
            <td>


            </td>
            <td><asp:Button ID="cmdLogin" runat="server" Text="LogIn"  style="background-color:#cc9c9c" /></td></tr>
     
      <tr><td>  <asp:CheckBox ID="ChkRememberMe" runat="server" Text="Remember Me" />
        <asp:Label ID="LblMessage" Text="" runat="server" /></td></tr>
              
        </table>
             </div>
    </div>
    </form>
</body>

</html>
