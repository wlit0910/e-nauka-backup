<%@ Page Title="Register" Language="C#" MasterPageFile="~/GuestENG/SiteENG.Master" AutoEventWireup="true" CodeBehind="RegisterENG.aspx.cs" Inherits="e_nauka.GuestENG.Formularz_internetowy15" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <main style="height:auto;">

            <style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:50px;text-align:center;">
      <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;font-size:55px;">Create your account</h1>
      <asp:Label ID="ValidUser" runat="server" Text="" CssClass="laber-error"></asp:Label>
  </div>
            



<%--                                         formularz rejestracji                                             --%>

<%--                            mozna dodac walidacje pól formularza: https://getbootstrap.com/docs/5.0/forms/validation/--%>

        <div style="max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">


     <div style="background-color:white; height:auto; max-height:1500px;width:500px;border-radius:30px;border-style:solid;border-color: #393939;margin-bottom:50px">

            <div>
				<h3 style="text-align:center;font-weight:normal; font-family: Montserrat, sans-serif;font-size:35px;margin:25px 0px 25px 0px">Register here</h3>
			</div>

         			<div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Name:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         

                <style>.content { min-width:100%; }</style>
                <asp:TextBox ID="Imie_Rej" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox>  
	
			</div>


                  <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Surname:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         
                <asp:TextBox ID="Nazwisko_Rej" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" ></asp:TextBox> 
               
               


			      </div>


                 <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Gender:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>   <%--dropdown--%>
                     
                        

                <asp:DropDownList ID="Plec_Rej" runat="server" Height="30px" Font-Size="Medium"  style="text-align:center;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;min-width:100%;">
                    <asp:ListItem style="font-size:small;">Female</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">Male</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">I dont want to type it</asp:ListItem>
                </asp:DropDownList>

                     
               
			      </div>



                           <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Age:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         
               
                      <style>.input-age { min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;text-align:center; }</style>
          <%--      <input ID="Wiek_Rej" type="number" min="0" max="99" class="input-age" />--%>
                                <asp:TextBox ID="Wiek_Rej" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" TextMode="Number"  ></asp:TextBox> 


			      </div>




                <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">E-mail:&hairsp;&hairsp;&hairsp;<span style="color: #ff0000">*</span></p>
                         
                                      <style>.input-email { min-width:100%;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;}</style>
              <%--  <input id="Email_Rej" type="email" class="input-email" />--%>
                    <asp:TextBox ID="Email_Rej" Height="30px" BackColor="#fae1d7"  runat ="server" BorderStyle="Solid" CssClass="content" TextMode="Email" ></asp:TextBox> 
                    
               
                

			      </div>



                <div style="margin: 30px 30px 0px 30px;display:block;">
				<p style="font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;">Language:&hairsp;&hairsp;&hairsp;</p>   <%--dropdown--%>
                         
               <asp:DropDownList ID="Jezyk_Rej" runat="server" Height="30px" Font-Size="Medium"  style="text-align:center;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;min-width:100%;">
                    <asp:ListItem style="font-size:small;">Polski</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">English</asp:ListItem>
                </asp:DropDownList>
               
               


			      </div>

         <%--BUTTON  REJESTRACJA --%>


                 <div style="margin: 70px 0px 30px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                              <asp:Button ID="Rejestracja" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Register" BackColor="#ff8454" CssClass="btnContact" OnClick="Rejestracja_Click" />
                   
			    </div>


         <div class="g-recaptcha"  style="text-align:center;margin-top:30px;margin-bottom:15px; max-width: fit-content;

        margin-left: auto;
        margin-right: auto;"
        data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI" 
        data-callback='onSubmit' 
        data-action='submit'>Submit

         </div>
         
         

                          <div style="text-align:center;">

                     
                     <style>.CheckBoxLogin input {width:25px; height:25px;border:solid;border-color:#777677;border-width:2px;background-color:#fae1d7;margin-top:10px;}</style>

                <asp:CheckBox ID="Consent" runat="server" CssClass="CheckBoxLogin" />
                              </div>

         <p style="text-align:center;font-weight: normal;font-size:15px;font-family: Montserrat, sans-serif;margin-top:10px;">I agree to the Terms of Use</p>
         <p style="text-align:center;font-weight: normal;font-size:15px;font-family: Montserrat, sans-serif;margin-top:-10px;"><a href="/Resources/Terms of Use.pdf" style="color:#ff6529;">Terms of Use</a></p>   


                          <div style="margin: 50px 30px 30px 0px;display:block;text-align:center;">


                              <style>.btnContact { min-width:40%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
                             <%-- <asp:Button ID="Wyslij_Kontakt" runat="server" Height="50px" BorderStyle="Solid" BorderColor="#141414" Text="Wyślij" BackColor="#ff8454" CssClass="btnContact" />--%>
                     
                    
			      </div>


     </div>


</div>

        <div style="height:150px">



        </div>

    </main>

</asp:Content>
