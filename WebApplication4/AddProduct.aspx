<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication4.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container{
    width:300px;
    padding:50px;
    margin:auto;
    border:0px solid lightgrey;
    border-radius:15px;
    padding-left:-90px;
   
   
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
        .auto-style1 {
            width: 367px;
        }
        h2{
    color:#cc9c9c;
    font-family:'Microsoft Sans Serif';
    font-size:30px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container" >
           <h2 class="auto-style1" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Product</h2>

             <table>
             <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                 <tr>
                <td><label>Id</label></td>
                <td>
                    <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator Text="*" ID="RfvId" runat="server"  ForeColor="Red" ControlToValidate="TxtId" ErrorMessage="Please Enter the Id"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label>Name</label></td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator Text="*" ID="RfvName" runat="server"  ForeColor="Red" ControlToValidate="TxtName" ErrorMessage="Please Enter the Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label>Description</label></td>
                <td>
                    <asp:TextBox ID="TxtDescription" TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator  Text="*" ID="RfvDescription" runat="server"  ControlToValidate="TxtDescription" ForeColor="Red" ErrorMessage="Enter Description"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
               
            <tr>
                <td><label>Price</label></td>
                <td>
                    <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator Text="*" ID="RfvPrice" runat="server"   ControlToValidate="TxtPrice" InitialValue="-1" ForeColor="Red" ErrorMessage="Enter the Price"></asp:RequiredFieldValidator>
                    <asp:RangeValidator Text="*" ID="RvPrice" runat="server"  ErrorMessage="Price should not be less than 0 and not greater than 100000" ControlToValidate="TxtPrice" ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
           
            <tr>
                <td><label>image</label></td>
                <td>
                    <asp:FileUpload ID="FileProductImage" runat="server" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button Text="Add Item" ID="CmdAddItem" runat="server" OnClick="CmdAddItem_Click" style="background-color:#cc9c9c" />
                    <asp:Button Text="Reset" ID="BtnReset"  CausesValidation="false" UseSubmitBehavior="false" runat="server" OnClick="BtnReset_Click" style="background-color:#cc9c9c" />
                </td>
            </tr>
        <tr><td>
             <asp:Label ID="LblStatus" runat="server" ></asp:Label>
            </td></tr>
      <tr>
          <td></td>
          <td>
              <asp:Button ID="BtnOk" runat="server" Text="Ok" style="background-color:#cc9c9c" OnClick="BtnOk_Click" />
          </td>      </tr>
              </table>
       
     </div>
    </form>
</body>
</html>
