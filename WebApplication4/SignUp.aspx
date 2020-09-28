<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication4.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> .container{
    width:300px;
    padding:90px;
    margin:auto;
    border:0px solid lightgrey;
    border-radius:15px;
    text-align:center;
    margin-left:100px;
   
}

table{
    margin:auto;
}

table, tr, td {
    border-collapse: collapse;
  
}
td{
   border-bottom: 1px solid #cc9c9c;
    padding:10px;
}
h4{
    color:#cc9c9c;
    font-family:'Microsoft Sans Serif';
    font-size:30px;
}
        .auto-style1 {
            height: 1px;
            width: 748px;
        }
        .auto-style4 {
            width: 732px;
            height: 631px;
            margin-left: 212px;
            margin-top: 0px;
        }
        </style>
</head>
<body style="height: 400px; width: 798px;">
    <form runat="server" class="auto-style4" >
        
      <div class="container" >
           <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration</h4>
        <div>
            <table style="float:left; width: 364px; height: 167px;">
                 <%--<tr>
                    <td>
                         <asp:Label ID="LblId" runat="server" Text="Id"></asp:Label>
                                <asp:RequiredFieldValidator ID="RfvId" Text="*" runat="server"  ForeColor="Red" ControlToValidate="TxtId"  ErrorMessage="Please enter your Id"></asp:RequiredFieldValidator>
                                </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtId" runat="server" place-holder="Id"></asp:TextBox>
                            </td></tr>--%>
                <tr>
                    <td>
                         <asp:Label ID="LblFirstName" runat="server" Text="FirstName "></asp:Label>
                                <asp:RequiredFieldValidator ID="RfvFirstName" Text="*" runat="server"  ForeColor="Red" ControlToValidate="TxtFirstName"  ErrorMessage="Please enter your firstname"></asp:RequiredFieldValidator>
                                </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtFirstName" runat="server" place-holder="FirstName"></asp:TextBox>
                            </td></tr>
                <tr>
                    <td>
                         <asp:Label ID="LblLastName" runat="server" Text="LastName "></asp:Label>
                                <asp:RequiredFieldValidator ID="RfvLastName" Text="*" runat="server"  ForeColor="Red" ControlToValidate="TxtLastName"  ErrorMessage="Please enter your lastname"></asp:RequiredFieldValidator>
                                </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtLastName" runat="server" place-holder=" LastName"></asp:TextBox>
                            </td></tr>
                        <tr>
                            <td>
                                 <asp:Label ID="LblUserName" runat="server" Text="UserName"></asp:Label>
                                 <asp:RequiredFieldValidator ID="RfvUserName" Text="*" runat="server"  ForeColor="Red" ControlToValidate="TxtUserName"  ErrorMessage="Please enter your UserName"></asp:RequiredFieldValidator>
                                </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtUserName" runat="server" place-holder="UserName"/>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                 <asp:Label ID="LblPassword" runat="server" Text="Password " TextMode="Password"></asp:Label>
                                 <asp:RequiredFieldValidator ID="RfvPassword" Text="*" runat="server"  ForeColor="Red" ControlToValidate="TxtPassword"  ErrorMessage="Please enter your Password"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtPassword" runat="server" place-holder="enter your password" Width="178px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="cmdSignUp" runat="server" Text="Sign Up" OnClick="cmdSignUp_Click" style="background-color:#cc9c9c" />
                            </td>
                        </tr>
                        <tr><td colspan="2">
                    <asp:Label ID="LblMessage1" runat="server" ></asp:Label>
                 </td></tr>
               
                   
                   
               
            </table>
        </div>
          </div>
    </form>
</body>
</html>
