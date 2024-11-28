<%@ Page Title="Użytkownicy serwisu" Language="C#" MasterPageFile="~/AdminSec/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="e_nauka.AdminSec.Formularz_internetowy12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<main style="height:auto;">

    <div class="text-center" style="height:auto;margin-top:40px;margin-bottom:50px;">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    margin-top:4px;
    letter-spacing: 2px;
    font-size:50px;}</style>
                    <style>.label-user2 {font-family: Montserrat, sans-serif;
    font-weight: 500;
    margin-top:20px;
    margin-right:50px;
    font-size:20px;}</style>


    <h1 class="label-user" >Podgląd zarejestrowanych<br>użytkowników serwisu:    
    </h1>
        </div>



<div style="max-height:400px; overflow-y:auto;">
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" 
                      BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                      CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" 
                      PageSize="15">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="LOGIN" HeaderText="LOGIN" SortExpression="LOGIN" />
                <asp:TemplateField HeaderText="PASSWORD">
                    <ItemTemplate>
                         <%# new string('*', Eval("PASSWORD").ToString().Length) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="SURNAME" HeaderText="SURNAME" SortExpression="SURNAME" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                <asp:TemplateField HeaderText="EMAIL">
                    <ItemTemplate>
                        <%# MaskEmail(Eval("EMAIL").ToString()) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="LANG" HeaderText="LANG" SortExpression="LANG" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=MyConnectionString" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM USERS"></asp:SqlDataSource>
    </center>
</div>



        <center>
     <h1 class="label-user" style="margin-top:80px;margin-bottom:100px; font-size:45px;margin-bottom:80px;" >Dostępne operacje:   
    </h1>
    </center>


    <%--    dodawanie --%>
    <div style="display:flex;text-align:left;margin-top:40px;margin-left:50px;"> 
      <asp:Button ID="Dodaj_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Dodaj rekord" BackColor="#a8ccfc" CssClass="btnLogout2" OnClick="Dodaj_Admin_Click"  />
                                      <style>.input-age2 { width:10%;border:solid;border-color:#777677;border-width:2px;text-align:center;margin-top:10px;font-size:20px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-right:50px; }</style>

                                <asp:TextBox ID="Add_login" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  placeholder="LOGIN"  Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="Add_pass" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  placeholder="PASS"  Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="Add_name" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  placeholder="NAME"   Visible="false"></asp:TextBox> 
                                <asp:TextBox ID="Add_surname" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  placeholder="SURNAME"  Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="Add_gender" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2" Width="55px" placeholder="GEN"  Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="Add_age" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  Width="63px" TextMode="Number" min="1" max="100" placeholder="AGE"  Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="Add_email" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2"  placeholder="EMAIL"   Visible="false"></asp:TextBox> 
                                <asp:TextBox ID="Add_lang" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2" Width="65px" placeholder="LANG"  Visible="false" ></asp:TextBox> 
        <asp:Button ID="Send_Add" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Dodaj" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Send_Add_Click"  Visible="false" />

 </div>
                <div>
<style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:40px;text-align:center;">
      <asp:Label ID="Valid1" runat="server" Text="" ForeColor="Red" CssClass="laber-error"></asp:Label>
  </div>
            </div>





    <%--    edytowanie --%>

    
    <div style="display:flex;text-align:left;margin-top:40px;margin-left:50px;">


      <style>.btnLogout { min-width:10%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:30px;margin-right:50px;}</style>
      

      <asp:Button ID="Edytuj_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Edytuj rekord" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Edytuj_Admin_Click"  />

<style>.dropdownAdmin { font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-right:50px;}</style>
       <asp:DropDownList ID="Pole_Admin" runat="server" Height="50px" Font-Size="20px" CssClass="dropdownAdmin" BackColor="#deeafa" Visible="false" style="text-align:center;border:solid;border-color:#777677;border-width:2px;margin-top:10px;">
                    <asp:ListItem style="font-size:small;">LOGIN</asp:ListItem>
                    <asp:ListItem style="font-size:small;">PASSWORD</asp:ListItem>
                    <asp:ListItem style="font-size:small;">NAME</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">SURNAME</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">GENDER</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">EMAIL</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">LANG</asp:ListItem>
                </asp:DropDownList>
      
                  
                              <style>.input-age { min-width:30%;border:solid;border-color:#777677;border-width:2px;text-align:center;margin-top:10px;font-size:20px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-right:50px; }
.input-age5 { border:solid;border-color:#777677;border-width:2px;text-align:center;margin-top:10px;font-size:20px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-right:50px; }
                              </style>
          <%--      <input ID="Wiek_Rej" type="number" min="0" max="99" class="input-age" />--%>
                                <asp:TextBox ID="Nowe_Admin" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age" Visible="false" ></asp:TextBox> 
                                <asp:TextBox ID="ID_do_zmiany" Height="50px" BackColor="#deeafa" Width="50px" runat ="server" BorderStyle="Solid" CssClass="input-age5" placeholder="ID" Visible="false" ></asp:TextBox> 

                           <asp:Button ID="Send_Edit" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Aktualizuj" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Send_Edit_Click" Visible="false" />

 </div>
     
            
            <div>
<style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:40px;text-align:center;">
      <asp:Label ID="Valid2" runat="server" Text="" ForeColor="Red" CssClass="laber-error"></asp:Label>
  </div>
            </div>





<%--    usuwanie --%>


    
        <div style="display:flex;text-align:left;margin-top:40px;margin-left:50px;">


      <style>.btnLogout { min-width:10%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:30px;margin-right:50px;}</style>
      <style>.btnLogout2 { min-width:10%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:30px;margin-right:50px;}</style>
      

      <asp:Button ID="Delete_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Usuń rekord" BackColor="#a8ccfc" CssClass="btnLogout2" OnClick="Delete_Admin_Click"  />

      
                  
                              <style>.input-age2 { width:10%;border:solid;border-color:#777677;border-width:2px;text-align:center;margin-top:10px;font-size:20px;font-family: Montserrat, sans-serif;font-weight: normal;color:black; border-radius:5px;opacity:0.8;margin-right:50px; }</style>

            <asp:Label ID="Label2" runat="server" Text="Podaj ID rekordu do usunięcia:" CssClass="label-user2" ></asp:Label>
                                <asp:TextBox ID="Pole_usun" Height="50px" BackColor="#deeafa"  runat ="server" BorderStyle="Solid" CssClass="input-age2" TextMode="Number" min="1" placeholder="ID" ></asp:TextBox> 
            



                           <asp:Button ID="Send_delete" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Usuń" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Send_delete_Click"  />

 </div>
     
            
            <div>
<style>.laber-error { font-weight: normal;font-size:20px;font-family: Montserrat, sans-serif;}</style>
  <div style="margin-bottom:40px;text-align:center;">
      <asp:Label ID="Valid3" runat="server" Text="" ForeColor="Red" CssClass="laber-error"></asp:Label>
  </div>
            </div>


    
<%--    pobierz do pliku --%>


    
<div style="display:flex;text-align:left;margin-top:40px;margin-left:50px;margin-bottom:100px;"> 
      <asp:Button ID="Pobierz" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Pobierz tabelę do pliku" BackColor="#a8ccfc" CssClass="btnLogout2" Enabled="false" />

       <asp:DropDownList ID="Typ_pliku" runat="server" Height="50px" Font-Size="20px" CssClass="dropdownAdmin" BackColor="#deeafa" style="text-align:center;border:solid;border-color:#777677;border-width:2px;margin-top:10px;">
                    <asp:ListItem style="font-size:small;text-align:center;">JSON</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">CSV</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">XML</asp:ListItem>
                    <asp:ListItem style="font-size:small;text-align:center;">PDF</asp:ListItem>
                </asp:DropDownList>

    <asp:Button ID="Pobierz_Admin" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Pobierz" BackColor="#a8ccfc" CssClass="btnLogout" OnClick="Pobierz_Admin_Click"  />
 </div>



</main>
</asp:Content>
