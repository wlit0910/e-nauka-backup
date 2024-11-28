<%@ Page Title="Start" Language="C#" MasterPageFile="User.Master" AutoEventWireup="true" CodeBehind="UserStart.aspx.cs" Inherits="e_nauka.Formularz_internetowy17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    

    <main>
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <style>.label-user {font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;}</style>


    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Witaj&ensp;
      
        <asp:Label ID="User_param" runat="server" Text="@test" CssClass="label-user"></asp:Label>
        

    </h1>
        

    <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;">Rozejrzyj się po swoim koncie.</p>

        <div style="text-align: center;">
        <img src="../img/line1.png" alt="curved line" style="width:400px;height:70px;margin-top:-10px;margin-bottom:15px;">
    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/courses-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Moje kursy</h5>
    <p class="card-text">Wyświetl podgląd swoich kursów, postępów i wielu innych.</p>
    <a href="UserCourse" class="btn btn-dark">Zobacz kursy</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/continue-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Kontynnuj kurs</h5>
    <p class="card-text">Kontynnuj rozpoczęty kurs. Wybrany zostanie najnowszy kurs.</p>
    <a href="ContinueCourse" class="btn btn-dark">Przejdź do kursu</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/resources-user.png" alt="Card image cap" style="width:80%;height:70%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Zasoby</h5>
    <p class="card-text">Eksploruj udostępniane w ramach lekcji zasoby.</p>
    <a href="LearningResources" class="btn btn-dark">Przejrzyj zasoby</a>
  </div>
</div>

    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/user-card.png" alt="Card image cap" style="width:80%;height:35%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Moje konto</h5>
    <p class="card-text">Sprawdź, bądź zaktualizuj informacje o swoim koncie.</p>
    <a href="UserAccount" class="btn btn-dark">Zobacz konto</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/about-card.png" alt="Card image cap" style="width:80%;height:35%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">O serwisie</h5>
    <p class="card-text">Dowiedz się więcej o serwisie e-nauka i o jego twórcy.</p>
    <a href="../About" class="btn btn-dark">O nas&hairsp;&hairsp;</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="../img/contact-card.png" alt="Card image cap" style="width:80%;height:75%;margin:10px 0px 0px 20px;">
  <div class="card-body">
    <h5 class="card-title">Skontaktuj się z nami</h5>
    <p class="card-text">Widzisz jakiś błąd? Chciałbyś coś ulepszyć? Napisz do nas!</p>
    <a href="../Contact" class="btn btn-dark">Kontakt</a>
  </div>
</div>



</div>

<div style="margin-bottom:100px;">



    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;justify-content:center;margin-top:70px;font-weight: 400;font-size:45px;margin-bottom:50px;">Ranking aktywnych użytkowników</h1>


    <div style="text-align:center;width:auto;">

        <asp:Chart ID="chartUserProgress" runat="server" Width="600px" Height="400px"  ToolTip="Postęp użytkowników serwisu" >
        <Series >
            <asp:Series Name="UserProgress" ChartType="Column" ></asp:Series>
        </Series>
        <ChartAreas>
        <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
        </ChartAreas>
        </asp:Chart>
        </div>
        
    </div>


    </div>

</main>


</asp:Content>
