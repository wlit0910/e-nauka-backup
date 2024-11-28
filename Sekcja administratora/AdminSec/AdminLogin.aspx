<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSec/Verification.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="e_nauka.AdminSec.Formularz_internetowy16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<%--                                         formularz logowania                                             --%>

<%--                            mozna dodac walidacje pól formularza: https://getbootstrap.com/docs/5.0/forms/validation/--%>

        <div style="max-width: fit-content;
  margin-left: auto;
  margin-right: auto;
  margin-top:120px;">


     <div style="background-color:white; height:auto;width:500px;border-radius:30px;border-style:solid;border-color: #393939;">

            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Zaloguj się</h3>
			</div>

         			<div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Login:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.content { min-width:100%; }</style>
                <asp:TextBox ID="Login_User" Height="30px" BackColor="#cccccc"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox>  
	
			</div>


                  <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Hasło:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.input-pass { min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;}</style>
                <%--<input id="Haslo_User" type="password" class="input-pass" />--%>
                <asp:TextBox ID="Haslo_User" Height="30px" BackColor="#cccccc"  runat ="server" BorderStyle="Solid" CssClass="input-pass"  TextMode="Password"></asp:TextBox> 
               


			      </div>
                           <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">ID:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.input-pass { min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;}</style>
                <%--<input id="Haslo_User" type="password" class="input-pass" />--%>
                <asp:TextBox ID="ID_Admin" Height="30px" BackColor="#cccccc"  runat ="server" BorderStyle="Solid" CssClass="input-pass"  TextMode="Number"></asp:TextBox> 
               


			      </div>



<style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="text-align:center;margin-top:20px;">
      <asp:Label ID="ValidAdmin" runat="server" Text="" ForeColor="Red" CssClass="laber-error" ></asp:Label>
  </div>
           



          <%--BUTTON  ZALOGUJ --%>






               <div style="margin: 50px 0px 50px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Loguj_User" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Zaloguj" BackColor="#ecf0f6" CssClass="btnContact" OnClick="Loguj_User_Click"  />
                   
			    </div>
         </div>
            </div>


</asp:Content>
