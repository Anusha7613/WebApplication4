<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Managerpage.aspx.cs" Inherits="WebApplication4.Managerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblStatus" runat="server" Text=""></asp:Label>

        </div>
        <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" >
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Action" ShowHeader="True" Text="Block User"  />

            </Columns>
        </asp:GridView>
      
    </form>
</body>
</html>
