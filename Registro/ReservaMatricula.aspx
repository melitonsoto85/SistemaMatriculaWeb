<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservaMatricula.aspx.cs" Inherits="SistemaMatriculaWeb.Registro.ReservaMatricula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reserva Matricula</title>
</head>
<body>
    <h1>Reserva Matricula</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />
            <asp:Button ID="Button2" runat="server" Text="Editar" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" />
    </form>
</body>
</html>
