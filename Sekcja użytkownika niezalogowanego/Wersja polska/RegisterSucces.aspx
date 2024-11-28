<%@ Page Title="Sukces rejestracji" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterSucces.aspx.cs" Inherits="e_nauka.Formularz_internetowy113" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <main style="text-align:center;height:auto;">


         <div style="width:auto;height:auto;text-align:center;justify-content:center;margin-top:60px;">
            <img src="img/register-success.png" alt="success" style="width:10%;height:10%;opacity:0.8;">
        </div>

      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:50px;font-weight: normal;font-size:55px;">Rejestracja przebiegła pomyślnie!</h1>


         <p style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;margin-top:50px;">Na podany adres e-mail niebawem przyjdzie wiadomość z Twoim nowym <span style="font-weight:bold">loginem</span> oraz <span style="font-weight:bold">hasłem</span>,<br>poprzez które zalogujesz się do 
             serwisu <span style="font-style:italic;"> e-nauka.</span><br><br>
      Pierwszy login i hasło z wiadomości są generowanym losowo ciągiem znaków - <span style="font-weight:bold;"><br>możesz je zmienić </span> po zalogowaniu się do aplikacji. 
         </p>


                      <div style="margin: 70px 0px 100px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:20%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Wroc_Register" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnContact" OnClick="Wroc_Register_Click" />
                   
			    </div>

  </main>


</asp:Content>
