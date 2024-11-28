<%@ Page Title="Log In" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="LoginENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main style="height:auto;">

         <style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:50px;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Access the app</h1>
      <center>
      <asp:Label ID="ValidUser" runat="server" Text="" CssClass="laber-error"></asp:Label>
          </center>
  </div>




<%--                                         formularz logowania                                             --%>

<%--                            mozna dodac walidacje pól formularza: https://getbootstrap.com/docs/5.0/forms/validation/--%>

        <div style="max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">


     <div style="background-color:white; height:auto;width:500px;border-radius:30px;border-style:solid;border-color: #393939;">

            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Log In</h3>
			</div>

         			<div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Login:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.content { min-width:100%; }</style>
                <asp:TextBox ID="Login_User" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox>  
	
			</div>


                  <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Password:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.input-pass { min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;}</style>
                <%--<input id="Haslo_User" type="password" class="input-pass" />--%>
                <asp:TextBox ID="Haslo_User" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="input-pass"  TextMode="Password"></asp:TextBox> 
               


			      </div>


                 <div style="margin: 30px 30px 0px 30px;display:flex;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;padding-bottom:5px;padding-right:30px;">Remember me:&hairsp;&hairsp;&hairsp;</p>
                     
                     <style>.CheckBoxLogin input {width:25px; height:25px;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;}</style>

                <asp:CheckBox ID="Remember" runat="server" CssClass="CheckBoxLogin" />
               
               
			      </div>

          <%--BUTTON  ZALOGUJ --%>






               <div style="margin: 30px 0px 30px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Loguj_User" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Log In" BackColor="#ff8454" CssClass="btnContact" OnClick="Loguj_User_Click" />
                   
			    </div>




         <p style="text-align:center;font-weight: normal;font-size:15px;font-family: Montserrat, sans-serif;padding-bottom:2px;"><a href="AccountRecoveryENG" style="color:#ff6529;">I forgot my password/login</a></p> <%--to href--%>
         <p style="text-align:center;font-weight: normal;font-size:15px;font-family: Montserrat, sans-serif;">Don't have an account yet?</p>
         <p style="text-align:center;font-weight: normal;font-size:15px;font-family: Montserrat, sans-serif;margin-top:-15px;"><a  href="RegisterENG" style="color:#ff6529;">Register here</a></p>    <%--to href--%>


     </div>


</div>

        <div style="height:150px">

        </div>


    </main>
</asp:Content>
