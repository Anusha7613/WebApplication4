<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.login" %>

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
           width: 777px;
           height: 420px;
           margin-left: 250px;
           margin-top: 116px;
          
       }
        .h2 {
            color: #cc9c9c;
            font-family: 'Microsoft Sans Serif';
            font-size: 30px;
        }
       

    </style>
</head>
<body style="height: 770px; margin-top: 3px" >
    
    <form id="form1" runat="server">

       <div class="auto-style3">
        <div  class="auto-style2">
            <h2 class="h2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login as User</h2>
          <table  style="width: 364px; height: 167px;"> 
              <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            <tr>
               <td> <label>User Name</label></td>
               
           <td> <asp:TextBox ValidationGroup="user" ID="TxtUserName" runat="server"></asp:TextBox></td>
                 <td>
                    <asp:RequiredFieldValidator ValidationGroup="User" Text="*" ID="RfvUserName" runat="server"  ForeColor="Red" ControlToValidate="TxtUserName" ErrorMessage="Please Enter the UserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
       
         
       <tr> <td><label>Password</label></td>
        <td><asp:TextBox ValidationGroup="User" Textmode="Password" ID="TxtPassword" runat="server"></asp:TextBox></td>
            <td>
                    <asp:RequiredFieldValidator ValidationGroup="User" Text="*" ID="RfvPassword" runat="server"  ForeColor="Red" ControlToValidate="TxtPassword" ErrorMessage="Please Enter the Password"></asp:RequiredFieldValidator>
                </td>
       </tr>
        
        <tr><td>

            </td>
            <td><asp:Button ID="CmdSignIn" ValidationGroup="User" runat="server" style="background-color:#cc9c9c" OnClick="CmdSignIn_Click" Text="Sign In" /></td></tr>
     
     
      <tr> <td> <asp:Label ID="LblMessageBox" ValidationGroup="User" Text="" runat="server" /></td></tr>
             
        </table>
             </div>
        <div class="auto-style1">



            <h2 class="h2">&nbsp;&nbsp;&nbsp; Login as Employee</h2>
          <table style=" width: 364px; height: 167px;"> 
              <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            <tr>
                <td><label>User Id</label></td>
          <td>  <asp:TextBox ValidationGroup="Employee" ID="TxtUserId" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ValidationGroup="Employee" Text="*" ID="RfvUserId" runat="server"  ForeColor="Red" ControlToValidate="TxtUserId" ErrorMessage="Please Enter the UserId"></asp:RequiredFieldValidator>
                </td>
            </tr>
       
         
       <tr> <td><label>Password</label></td>
       <td> <asp:TextBox ValidationGroup="Employee" Textmode="Password" ID="TxtPassword1" runat="server"></asp:TextBox></td>
           <td>
                    <asp:RequiredFieldValidator ValidationGroup="Employee" Text="*" ID="RfvPassword1" runat="server"  ForeColor="Red" ControlToValidate="TxtPassword1" ErrorMessage="Please Enter the Password"></asp:RequiredFieldValidator>
                </td>
          
       </tr>
        
        <tr>
            <td>


            </td>
            <td><asp:Button ValidationGroup="Employee" ID="cmdLogin" runat="server" Text="LogIn"  Onclick="BtnLogin_Click" style="background-color:#cc9c9c" /></td></tr>
              
     
    
     <tr> <td>  <asp:Label ValidationGroup="Employee" ID="LblMessage" Text="" runat="server" /></td></tr>
             
        </table>
             </div>
    </div>
    </form>
       
</body>
</html>
