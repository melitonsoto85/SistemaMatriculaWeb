<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSistema.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.MenuSistema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Sistema</title>
</head>
<body>
    <h1>Menu Sistema</h1>
    <form id="form1" runat="server">
        <div style="width: 1080px">

            Descripcion<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Estado<br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />

        </div>
    </form>
</body>
</html>
