<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
        height: 4px;
        width: 1200px;
        margin-left: 0px; 
        margin-top: 0px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavContent" runat="server">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="False" />
        <div>
            <asp:Menu ID="Menu1"  style="text-decoration-color:snow" runat="server" Orientation="Horizontal" DataSourceID="SiteMapDataSource1"></asp:Menu>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ChildContent" runat="server"> 
    <br />
    <hr  style="background-color:black;background-size:contain" class="auto-style3"/>
    
    <div>
            <asp:DataList ID="DlProd" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"  >
                <ItemTemplate>
                    <div>
                        <asp:Image Width="295" Height="280" ID="ImgProduct" runat="server" AlternateText="Image" ImageUrl='<%#"~/ImageHandler1.ashx?id="+Eval("id") %>' />
                    </div>
                    <div>
                      
                        <asp:Label ID="LblName"   runat="server" Text='<%#Eval("Name") %>'/>
                    </div>
                    <div>
                     
                        <asp:Label ID="Label1"  runat="server" Text='<%#Eval("Description") %>'/>
                    </div>
                    <div>
                     
                        <asp:Label  ID="LblPrice"  runat="server" Text='<%#Eval("Price") %>'/>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
