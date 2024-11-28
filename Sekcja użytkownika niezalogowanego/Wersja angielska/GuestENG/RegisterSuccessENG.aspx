<%@ Page Title="Successful Registration" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="RegisterSuccessENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <main style="text-align:center;height:auto;">


         <div style="width:auto;height:auto;text-align:center;justify-content:center;margin-top:60px;">
            <img src="../img/register-success.png" alt="success" style="width:10%;height:10%;opacity:0.8;">
        </div>

      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:50px;font-weight: normal;font-size:55px;">Registration was successful!</h1>


         <p style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;margin-top:50px;">An email will be sent to the email address provided. This email will contain Your new <span style="font-weight:bold">login</span> and <span style="font-weight:bold">password</span>,<br>through which you log in to 
             service <span style="font-style:italic;"> e-nauka.</span><br><br>
      The first login and password from the message are a randomly generated string of characters - <span style="font-weight:bold;"><br>you can change them </span> after logging in to the application. 
         </p>


                      <div style="margin: 70px 0px 100px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:20%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Wroc_Register" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnContact" OnClick="Wroc_Register_Click" />
                   
			    </div>

  </main>
</asp:Content>
