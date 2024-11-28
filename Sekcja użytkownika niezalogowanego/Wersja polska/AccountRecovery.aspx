<%@ Page Title="Odzyskiwanie hasła/loginu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountRecovery.aspx.cs" Inherits="e_nauka.Formularz_internetowy122"  Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:auto;">
        <h3 style="text-align:center;font-weight:500; font-family: Montserrat, sans-serif;font-size:35px;margin:60px 0px 25px 0px">Zapomniałeś hasła lub loginu?<br>Nic straconego!</h3>

<div>
    <h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:25px;margin:50px 0px 25px 0px">Wpisz swój adres e-mail, który podałeś podczas rejestracji w serwisie.
        <br><br>Jeśli taki adres istnieje w bazie danych, zostanie na niego<br>wysłana wiadomość z Twoim loginem, bądź hasłem.</h3>
</div>

<div style="display:flex;margin-top:80px;margin-bottom:50px;">
    <h3 style="text-align:left;font-weight:500; font-family: Montserrat, sans-serif;font-size:25px;margin:0px 20px 25px 80px">Adres e-mail:
    </h3>

      <style>.content { min-width:30%;margin-top:0px;margin-left:50px; }</style>

      <asp:TextBox ID="Email_User" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" TextMode="Email" >
      </asp:TextBox>     

      <style>.btnContact { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-left:50px;margin-top:-10px;}</style>

      <asp:Button ID="Loguj_User" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Wyślij" BackColor="#ff8454" CssClass="btnContact" OnClick="Loguj_User_Click"  />
</div>

                       
        <style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
<div style="text-align:center;margin-top:20px;margin-bottom:150px;">

      <asp:Label ID="ValidMessage" runat="server" Text="" ForeColor="Red" CssClass="laber-error" ></asp:Label>
  
</div>
    
</div>
</asp:Content>
