<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ciclo.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.Ciclo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ciclo</title>
</head>
<body>
    <h1>Ciclo</h1>
    <form id="form1" runat="server">
        <div style="width: 91px; height: 16px">
            <asp:Label ID="Label1" runat="server" Text="Ciclo"></asp:Label>&nbsp;
            <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />
        </p>
    </form>
</body>
</html>
