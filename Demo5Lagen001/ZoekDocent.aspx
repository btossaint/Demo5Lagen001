<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZoekDocent.aspx.cs" Inherits="Demo5Lagen001.ZoekDocent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lZoekDocent" runat="server" Text="Vul de te zoeken docent naam in:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="bZoek" runat="server" OnClick="bZoek_Click" Text="Zoek" />
            <br />
            <br />
            <asp:Label ID="lDocentNaam" runat="server"></asp:Label>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
