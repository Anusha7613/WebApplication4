<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebApplication4.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <asp:Button Text="Sumbit" ID="CmdAddItem" runat="server" OnClick="CmdAddItem_Click" />
                    <asp:Button Text="Reset" ID="BtnReset"  CausesValidation="false" UseSubmitBehavior="false" runat="server" OnClick="BtnReset_Click"  />
                </td>
            </tr>
        </table>
        <asp:Label ID="LblStatus" runat="server" ></asp:Label>
            <hr />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DXCConnectionString %>" SelectCommand="SELECT [Id], [Name], [Description], [Price],  [Productimage]FROM [Prod]"></asp:SqlDataSource>
   
        <asp:GridView ID="GvProduct" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2" PageSize="5" AutoGenerateColumns="False">
            <Columns>
              <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
