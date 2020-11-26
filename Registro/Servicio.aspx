<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicio.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.Servicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Servicio</title>
</head>
<body>
    <h1>Servicio</h1>
    <form id="form1" runat="server">
        <div>
            Servicio<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Estado<br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="125px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />
        </div>
    </form>
</body>
</html>
