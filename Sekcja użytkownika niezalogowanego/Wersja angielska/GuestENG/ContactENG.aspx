<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="ContactENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main style="height:auto;">


  <div>
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Contact Us</h1>
  </div>

        <div style="width:auto;height:auto;margin-top:35px;text-align:center;justify-content:center;">
            <img src="../img/envelope-contact.png" alt="envelope" style="width:100px;height:70px;margin-top:0px;margin-bottom:50px;opacity:0.8;">
        </div>


<%--                                         formularz kontaktowy                                             --%>

<%--                            mozna dodac walidacje pól formularza: https://getbootstrap.com/docs/5.0/forms/validation/--%>

        <div style="max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">


     <div style="background-color:white; height:auto;width:500px;border-radius:30px;border-style:solid;border-color: #393939;">

            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Fill out the form</h3>
			</div>

         <style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="text-align:center;margin-top:20px;">
      <asp:Label ID="ValidMessage" runat="server" Text="" ForeColor="Red" CssClass="laber-error" ></asp:Label>
  </div>

         			<div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Name:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.content { min-width:100%; }</style>
                <asp:TextBox ID="Imie_Kontakt" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox>  
	
			</div>


                  <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">E-mail:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         
                <asp:TextBox ID="Email_Kontakt" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox> 
               
               


			      </div>


                 <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Message:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         
                     
                     <textarea id="Text_Kontakt" name="Text_Kontakt" rows="3" style="min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;" placeholder="Describe the error, the location of the error, or your suggestion for improving the service." ></textarea>
               
               


			      </div>


                          <div style="margin: 50px 30px 30px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Wyslij_Kontakt" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Send message" BackColor="#ff8454" CssClass="btnContact" OnClick="Wyslij_Kontakt_Click" />
                     
                    
			      </div>


     </div>


</div>

        <div style="height:150px">

        </div>


    </main>
</asp:Content>
