<%@ Page Title="Account Recovery" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="AccountRecoveryENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy16" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto;">
        <h3 style="text-align:center;font-weight:500; font-family: Montserrat, sans-serif;font-size:35px;margin:60px 0px 25px 0px">Forgot your password or login?<br>Nothing lost!</h3>


<div>
    <h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:25px;margin:50px 0px 25px 0px">Enter your email address that you provided when registering on the website.<br>
        <br>If your address exists in the database, a message with your login or password will be sent to it</h3>
</div>

   <div style="display:flex;margin-top:80px;margin-bottom:50px;">
    <h3 style="text-align:left;font-weight:500; font-family: Montserrat, sans-serif;font-size:25px;margin:0px 20px 25px 80px">Email address:</h3>
                       <style>.content { min-width:30%;margin-top:0px;margin-left:50px; }</style>
                <asp:TextBox ID="Email_User" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" TextMode="Email" ></asp:TextBox> 
       

                 <style>.btnContact { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-left:50px;margin-top:-10px;}</style>
                <asp:Button ID="Loguj_User" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Send" BackColor="#ff8454" CssClass="btnContact" OnClick="Loguj_User_Click"  />



</div>

                        <style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="text-align:center;margin-top:20px;margin-bottom:150px;">
      <asp:Label ID="ValidMessage" runat="server" Text="" ForeColor="Red" CssClass="laber-error" ></asp:Label>
  </div>

    </div>

</asp:Content>
