<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Turno.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.Turno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Turno</title>
</head>
<body>
    <h1>Turno</h1>
    <form id="form1" runat="server">
        <div>
            Turno<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Hora Inicio<br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Hora Fin<br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />
        </div>
    </form>
</body>
</html>
