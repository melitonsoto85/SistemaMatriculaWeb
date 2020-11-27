<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaMatriculaWeb.Transa.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bienvenidos al Sistema Reserva Matricula</title>
</head>
<body>
    <h1>Bienvenidos</h1>
    <form id="form1" runat="server">
      <table>
          <tr>
              <td>
                  Usuario:
              </td>
              <td>
                  <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>
                  Password:
              </td>
              <td>
                  <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
              </td>
          </tr>
      </table>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        </asp:PasswordRecovery>
        <br />
        <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" />
        <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" />

    </form>
</body>
</html>
