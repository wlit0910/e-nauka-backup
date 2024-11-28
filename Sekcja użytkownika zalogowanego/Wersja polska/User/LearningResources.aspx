<%@ Page Title="Zasoby" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="LearningResources.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <main style="height:auto;">

           
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Zasoby użytkownika&ensp;
      
        <asp:Label ID="User_param" runat="server" Text="@test" CssClass="label-user"></asp:Label>
        

    </h1>

    <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:25px;margin-top:25px;">Kliknij w daną lekcję, aby przejść do teorii.</p>
    </div>

       


            <style type="text/css">.label-course {font-family: Montserrat, sans-serif;
    font-weight: 500;
    color:#c75010;
    opacity:0.6;
    letter-spacing: 2px;
    font-size:35px;}

.label-course:hover{
    color:#c75010;
    opacity:1;
    transition: 0.3s;
}
.label-course-inactive {font-family: Montserrat, sans-serif;
    font-weight: 500;
    color:dimgrey;
    opacity:0.6;
    letter-spacing: 2px;
    font-size:35px;}

.label-course-inactive:hover{
    color:#262626;
    opacity:1;
    transition: 0.3s;
}

            </style>


       <style>.label-module {font-family: Montserrat, sans-serif;
    font-weight: 400;
    letter-spacing: 2px;
    font-size:25px;}</style>





       <style type="text/css">.label-lesson {font-family: Montserrat, sans-serif;
    font-weight: 400;
    color:#c75010;
    opacity:0.8;
    letter-spacing: 2px;
    font-size:20px;}

.label-lesson:hover{
    color:#702200;
    transition: 0.3s;
}
.label-lesson-inactive {font-family: Montserrat, sans-serif;
    font-weight: 400;
    color:#4d3e39;
    opacity:0.8;
    letter-spacing: 2px;
    font-size:20px;}

.label-lesson-inactive:hover{
    color:#262626;
    transition: 0.3s;
}

 </style>


    <style>.label-lesson-status {font-family: Montserrat, sans-serif;
    font-weight: 400;
    letter-spacing: 2px;
    margin-left:50px;
    font-size:20px;}</style>


        <div style="margin-left:80px;margin-top:80px;margin-bottom:120px;">

     <!-- Repeater dla modułów -->
      <asp:Repeater ID="rptCourses" runat="server">
    <ItemTemplate>
        <div style="margin-bottom:40px;">
            <asp:LinkButton ID="lnkCourse" runat="server" Text='<%# Eval("CourseName") %>'  CssClass="label-course" PostBackUrl="#" ToolTip="Twój kurs"  Enabled="false"/>

            <!-- Panel z lekcjami (początkowo ukryty) -->
            <asp:Panel ID="pnlModules" runat="server" Visible="true">
                <asp:Repeater ID="rptModules" runat="server" DataSource='<%# Eval("Modules") %>' >
                    <ItemTemplate>

                        <div style="margin-left: 80px;margin-top:40px;">
                            <asp:Label ID="lnkModule" runat="server" Text='<%# Eval("ModuleName") %>' CommandArgument='<%# Container.ItemIndex %>' CssClass="label-module" />

                            <asp:Panel ID="pnlLessons" runat="server" Visible="true">
                                <asp:Repeater ID="rptLessons" runat="server" DataSource='<%# Eval("Lessons") %>'>
                                    <ItemTemplate>

                                        <div style="margin-left: 120px;margin-top:20px;">
                                            <asp:HyperLink ID="lblLesson" runat="server"  Text='<%# Eval("LessonName") %>' NavigateUrl='<%# Eval("LessonUrl") %>' CssClass="label-lesson">HyperLink</asp:HyperLink>
                                            
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </asp:Panel>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </asp:Panel>
        </div>
    </ItemTemplate>
</asp:Repeater>
            </div>

 <%--   Tutaj dane na STAŁO--%>
           <%-- Text='<%# Eval("ModuleName") %>'--%>
   
    <ItemTemplate>
        <div style="margin-bottom:100px;margin-left:80px;margin-top:80px;">
            <asp:LinkButton ID="lnkCourse5" runat="server" Text="Kurs Java - początkujący" CssClass="label-course-inactive" PostBackUrl="#" ToolTip="Twój kurs" Enabled="false" />
            <asp:Label ID="Label4" runat="server" Text="W trakcie tworzenia" CssClass="label-lesson-status"></asp:Label>

            <!-- Panel z lekcjami (początkowo ukryty) -->
            <asp:Panel ID="pnlModules5" runat="server" Visible="true">
               
                    

                        <div style="margin-left: 80px;margin-top:40px;">
                            <asp:Label ID="Label1" runat="server" Text='Moduł 1. Wprowadzenie do Javy' CssClass="label-module" /><br>

                            <div style="margin-left: 120px;margin-top:20px;">
                                <asp:Panel ID="Panel1" runat="server" Visible="true">

                                    <%--przerobic tak--%>
                                    <div style="display:flex;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"   NavigateUrl='../Demp.aspx' CssClass="label-lesson-inactive" Enabled="false">Lekcja 1. Podstawy Javy</asp:HyperLink>
                                        <%--<asp:Label ID="Label4" runat="server" Text="ukończona" CssClass="label-lesson-status"></asp:Label>--%>
                                    </div>
                                    <br>
                                    <%--...--%>

                                            <asp:HyperLink ID="HyperLink2" runat="server"   NavigateUrl='../Demp.aspx' CssClass="label-lesson-inactive" Enabled="false">Lekcja 2. Zmienne, stałe, typy danych</asp:HyperLink><br><br>
                                            <asp:HyperLink ID="HyperLink3" runat="server"   NavigateUrl='../Demp.aspx' CssClass="label-lesson-inactive" Enabled="false">Lekcja 3. Operatory i instrukcje warunkowe</asp:HyperLink>
                                        
                                </asp:Panel>
                                </div>
                            </div>



                            <div style="margin-left: 80px;margin-top:40px;">
                            <asp:Label ID="Label2" runat="server" Text='Moduł 2. Kontynuacja kursu' CssClass="label-module" />

                                 <div style="margin-left: 120px;margin-top:20px;">
                                      <asp:Panel ID="Panel2" runat="server" Visible="true">
                                            <asp:HyperLink ID="HyperLink4" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 1. Pętle i tablice</asp:HyperLink><br><br>
                                            <asp:HyperLink ID="HyperLink5" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 2. Funkcje</asp:HyperLink><br><br>
                                            <asp:HyperLink ID="HyperLink6" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 3. Klasy i obiekty</asp:HyperLink>
                                            </asp:Panel>
                                        </div>
                                </div>




                          <div style="margin-left: 80px;margin-top:40px;">
                            <asp:Label ID="Label3" runat="server" Text='Moduł 3. Zaawansowane tematy Javy' CssClass="label-module" />

                                 <div style="margin-left: 120px;margin-top:20px;">
                                      <asp:Panel ID="Panel3" runat="server" Visible="true">
                                            <asp:HyperLink ID="HyperLink7" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 1. Dziedziczenie</asp:HyperLink><br><br>
                                            <asp:HyperLink ID="HyperLink8" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 2. Polimorfizm</asp:HyperLink><br><br>
                                            <asp:HyperLink ID="HyperLink9" runat="server"  Text='bbbb' NavigateUrl='He' CssClass="label-lesson-inactive" Enabled="false">Lekcja 3. Wyjątki i obsługa błędów</asp:HyperLink>
                                            </asp:Panel>
                                        </div>
                                </div>

                                                       
                            </asp:Panel>
                        </div>
                    </ItemTemplate>

    </main>

</asp:Content>
