<%@ Page Title="Kontynuuj kurs" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="ContinueCourse.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

        <main style="height:1100px;">

           
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Rozpoczęty kurs:&ensp;
      
        <asp:Label ID="Last_course" runat="server" Text="@nazwa-kursu" CssClass="label-user"></asp:Label>
        

    </h1>
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

 </style>


    <style type="text/css">.label-lesson-status {font-family: Montserrat, sans-serif;
    font-weight: 400;
    letter-spacing: 2px;
    margin-left:50px;
    font-size:12px;}
.label-lesson-status2 {font-family: Montserrat, sans-serif;
    font-weight: 400;
    margin-top:15px;
    color:#d12f02;
    margin-left:80px;
    font-size:20px;}

.label-lesson-status2:hover{
    color:#692614;
    transition: 0.3s;
}
    </style>

            <div style="margin-left:80px;margin-top:80px;margin-bottom:auto;">

     <!-- Repeater dla modułów -->
      <asp:Repeater ID="rptCourses" runat="server">
    <ItemTemplate>
        <div style="margin-bottom:40px;">
            <div style="display:flex;">
            <asp:LinkButton ID="lnkCourse" runat="server" Text='<%# Eval("CourseName") %>' CommandArgument='<%# Container.ItemIndex %>' OnClick="lnkCourse_Click"  CssClass="label-course" />
                <asp:HyperLink ID="Projekt1" runat="server" Text="Projekt końcowy nr 1" NavigateUrl='../C01/ProjectC01M01.aspx' CssClass="label-lesson-status2"></asp:HyperLink>
                <asp:HyperLink ID="Projekt2" runat="server" Text="Projekt końcowy nr 2" NavigateUrl='../C01/ProjectC01M02.aspx' CssClass="label-lesson-status2"></asp:HyperLink>
                <asp:HyperLink ID="Projekt3" runat="server" Text="Projekt końcowy nr 3" NavigateUrl='../C01/ProjectC01M03.aspx' CssClass="label-lesson-status2"></asp:HyperLink>
            </div>

            <!-- Panel z lekcjami (początkowo ukryty) -->
            <asp:Panel ID="pnlModules" runat="server" Visible="false">
                <asp:Repeater ID="rptModules" runat="server" DataSource='<%# Eval("ModulesExt") %>' >
                    <ItemTemplate>

                        <div style="margin-left: 80px;margin-top:40px;">
                            <asp:Label ID="lnkModule" runat="server" Text='<%# Eval("ModuleName") %>' CommandArgument='<%# Container.ItemIndex %>' CssClass="label-module" />

                            <asp:Panel ID="pnlLessons" runat="server" Visible="true">
                                <asp:Repeater ID="rptLessons" runat="server" DataSource='<%# Eval("LessonsExt") %>'>
                                    <ItemTemplate>

                                        <div style="margin-left: 120px;margin-top:20px;">
                                            <asp:HyperLink ID="lblLesson" runat="server"  Text='<%# Eval("LessonName") %>' NavigateUrl='<%# Eval("LessonUrl") %>' CssClass="label-lesson">HyperLink</asp:HyperLink>
                                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("LessonStatus") %>' CssClass="label-lesson-status"></asp:Label>
                                            
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



            <div style="height:100px;">

         </div>

    </main>

</asp:Content>
