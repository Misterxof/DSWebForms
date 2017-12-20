<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="WebApplication1.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 384px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Select.aspx" Text="Просмотр" Value="Просмотр"></asp:MenuItem>
                <asp:MenuItem Text="Удаление" Value="Удаление" NavigateUrl="~/Delete.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Update.aspx" Text="Изменение" Value="Изменение"></asp:MenuItem>
                <asp:MenuItem Text="Добавление" Value="Добавление"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerid" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="playerid" HeaderText="playerid" ReadOnly="True" SortExpression="playerid" />
                <asp:BoundField DataField="jersey" HeaderText="jersey" SortExpression="jersey" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
                <asp:BoundField DataField="birthcity" HeaderText="birthcity" SortExpression="birthcity" />
                <asp:BoundField DataField="birthstate" HeaderText="birthstate" SortExpression="birthstate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [roster] WHERE (([playerid] = ?) OR ([playerid] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [roster] ([playerid], [jersey], [fname], [sname], [position], [birthday], [weight], [height], [birthcity], [birthstate]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [roster]" UpdateCommand="UPDATE [roster] SET [jersey] = ?, [fname] = ?, [sname] = ?, [position] = ?, [birthday] = ?, [weight] = ?, [height] = ?, [birthcity] = ?, [birthstate] = ? WHERE (([playerid] = ?) OR ([playerid] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="playerid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="playerid" Type="String" />
                <asp:Parameter Name="jersey" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="height" Type="Int32" />
                <asp:Parameter Name="birthcity" Type="String" />
                <asp:Parameter Name="birthstate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="jersey" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="height" Type="Int32" />
                <asp:Parameter Name="birthcity" Type="String" />
                <asp:Parameter Name="birthstate" Type="String" />
                <asp:Parameter Name="playerid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        playerid <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        jersey&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        fname&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        sname&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" />
        <br />
        position <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        birthday <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        weight&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        height&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        birthcity <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        birthstate<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
    </form>
</body>
</html>
