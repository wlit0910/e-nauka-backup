<%@ Page Title="Moje konto" Language="C#" MasterPageFile="~/AdminSec/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="e_nauka.AdminSec.Formularz_internetowy14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <main style="height:auto;">

           
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    margin-top:5px;
    font-size:50px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Konto administratora&ensp;
      
        <asp:Label ID="Admin_param" runat="server" Font-Size="50px" ForeColor="Blue" Text="@test" CssClass="label-user"></asp:Label>
        

    </h1>
    </div>



         <div style="display:flex;">

            <div style="width:50%;margin-top:50px;margin-left:50px;border-color:black;border-width:2px;border-style:solid;border-radius:20px; height:auto;margin-right:5px;">


          <div style="background-color:#a8ccfc;border-radius:20px;border-style:solid;border-color:#141414;margin-top:10px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;">

            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:35px;">Dane administratora</h1>

        </div>



      <div style="margin: 30px 30px 0px 30px;display:flex;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Imię:&hairsp;&hairsp;&hairsp;&ensp;</p>
				
                         
     <style>.label-account {font-family: Montserrat, sans-serif;
    font-weight: normal;
    color:blue;
    letter-spacing: 2px;
    font-size:30px;}</style>

               <asp:Label ID="Username" runat="server" Text="@test-name" CssClass="label-account"></asp:Label>
               
	</div>


      <div style="margin: 30px 30px 0px 30px;display:flex;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Nazwisko:&hairsp;&hairsp;&hairsp;&ensp;</p>
				
                         
          <asp:Label ID="Surname" runat="server" Text="@test-surname" CssClass="label-account"></asp:Label>

	
	</div>
       
      


      <div style="margin: 30px 30px 0px 30px;display:flex;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Email:&hairsp;&hairsp;&hairsp;&ensp;</p>
				
                         
          <asp:Label ID="Email" runat="server" Text="@test-email" CssClass="label-account"></asp:Label>

	
	</div>
	

    <div style="margin: 30px 30px 80px 30px;display:flex;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Telefon:&hairsp;&hairsp;&hairsp;&ensp;</p>
				
                         
          <asp:Label ID="Phone" runat="server" Text="@test-phone" CssClass="label-account"></asp:Label>

	
	</div>





	
	</div>
		

          









             <div style="width:50%;margin-top:50px;margin-right:50px;border-color:black;border-width:2px;border-style:solid;border-radius:20px; height:auto">


        <div style="background-color:#a8ccfc;border-radius:20px;border-style:solid;border-color:#141414;margin-top:10px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;">

            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:35px;">Zabezpieczenia</h1>

        </div>


                   <div style="margin: 30px 30px 0px 30px;display:flex;">
                       <p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Identyfikator:&hairsp;&hairsp;&hairsp;&ensp;</p>
			            <asp:Label ID="ID_Admin" runat="server" Text="@test-id" CssClass="label-account"></asp:Label>
		
                    </div>

                   <div style="margin: 30px 30px 0px 30px;display:flex;">
                       <p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Login:&hairsp;&hairsp;&hairsp;&ensp;</p>
			            <asp:Label ID="Login_Admin" runat="server" Text="@test-login" CssClass="label-account"></asp:Label>
		
                    </div>

                   <div style="margin: 30px 30px 0px 30px;display:flex;">
                       <p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Hasło:&hairsp;&hairsp;&hairsp;&ensp;</p>
			            <asp:Label ID="Haslo_Admin" runat="server" Text="@test-pass" CssClass="label-account"></asp:Label>
		
                    </div>

                   <div style="margin: 30px 30px 80px 30px;display:flex;">
                       <p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;font-size:30px;">Token:&hairsp;&hairsp;&hairsp;&ensp;</p>
			            <asp:Label ID="Token_Admin" runat="server" Text="@test-token" CssClass="label-account"></asp:Label>
		
                    </div>


            </div>

         </div>

            <style>
                .label-info{
font-weight: 500;font-size:22px;color:#bf0502; font-family: Montserrat, sans-serif;
                }
            </style>

             <div style="text-align:center;margin-top:20px;">
                <asp:Label ID="Info_Label" runat="server" Text="Uwaga! Jeśli zmieniasz login - zapamiętaj nowy login. Wyloguj się i zaloguj się ponownie używając nowego loginu." ForeColor="#bf0502" CssClass="label-info" Visible="false" ></asp:Label>
            </div>

  
                       <div style="display:flex;text-align:left;margin-top:100px;margin-left:50px;">


      <style>.btnLogout { min-width:10%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:80px;margin-right:50px;}</style>
      

      <asp:Button ID="Edytuj_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Edytuj pole" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Edytuj_Admin_Click"  />

<style>.dropdownAdmin { font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-right:50px;}</style>
       <asp:DropDownList ID="Pole_Admin" runat="server" Height="50px" Font-Size="20px" CssClass="dropdownAdmin" BackColor="#deeafa" style="text-align:center;border:solid;border-color:#777677;border-width:2px;margin-top:10px;">
                    <asp:ListItem style="font-size:small;">Email</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">Telefon</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">Login</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">Hasło</asp:ListItem>
                </asp:DropDownList>
      
                  
                              <style>.input-age { min-width:30%;border:solid;border-color:#777677;border-width:2px;text-align:center;margin-top:10px;font-size:20px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-right:50px; }</style>
          <%--      <input ID="Wiek_Rej" type="number" min="0" max="99" class="input-age" />--%>
                                <asp:TextBox ID="Nowe_Admin" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age" ></asp:TextBox> 


                           <asp:Button ID="Send_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Aktualizuj" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Send_Admin_Click"  />

 </div>
     
            
            <div>
<style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:100px;text-align:center;">
      <asp:Label ID="ValidAdmin" runat="server" Text="" ForeColor="Red" CssClass="laber-error" ></asp:Label>
  </div>
            </div>




   </main>
</asp:Content>
