<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datalist.aspx.cs" Inherits="WebApplication4.datalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="datalist.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:DataList ID="DlProd" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"  >
                <ItemTemplate>
                    <div>
                        <asp:Image Width="250" Height="250" ID="ImgProduct" runat="server" AlternateText="Image" ImageUrl='<%#"~/ImageHandler1.ashx?id="+Eval("id") %>' />
                    </div>
                    <div>
                        <label>ProductName:</label>
                        <asp:Label ID="LblName" runat="server" Text='<%#Eval("Name") %>'/>
                    </div>
                    <div>
                       <label>Price:</label>
                        <asp:Label ID="LblPrice" runat="server" Text='<%#Eval("Price") %>'/>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
