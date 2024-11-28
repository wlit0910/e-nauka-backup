<%@ Page Title="Strona główna" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="e_nauka._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<main>
<div class="text-center" style="height:auto;margin-top:40px">  <%--height auto--%>

    
    <h1 class="display-4 text-center" style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;margin-top:70px;font-weight: normal;">Witaj w&ensp;&hairsp;
      
         <i class="fa-solid fa-code" style="color: #000000;font-size:60px;margin-top:8px;"></i><p style="    font-family: Montserrat, sans-serif;
    font-weight: normal;
    letter-spacing: 2px;
    font-size:55px;
    
    ">&hairsp;&hairsp;&hairsp;e-nauka</p>

    </h1>
        

    <p  style="font-family: Montserrat, sans-serif;font-weight: normal;font-size:large;">Kontynuuj swój kurs lub rozpocznij nowy.</p>

        <div style="text-align: center;">
        <img src="img/line1.png" alt="curved line" style="width:400px;height:70px;margin-top:-10px;margin-bottom:15px;">
    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/user-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Logowanie</h5>
    <p class="card-text">Uzyskaj dostęp do swoich kursów, postępów i wielu innych.</p>
    <a href="Login" class="btn btn-dark">Zaloguj się</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/nonUser-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Rejestracja</h5>
    <p class="card-text">Rozpocznij nową drogę do polepszania swoich umiejętności.</p>
    <a href="Register" class="btn btn-dark">Zarejestruj się</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/demo-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Lekcja próbna</h5>
    <p class="card-text">Przejdź losową lekcję i rozwiąż powiązane z nią zadanie.</p>
    <a href="Demo" class="btn btn-dark">Przejdź do demo</a>
  </div>
</div>

    </div>

<div style="display:flex;text-align:left;
 max-width: fit-content;
  margin-left: auto;
  margin-right: auto;">



<div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/app-card.png" alt="Card image cap" style="width:70%;height:30%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Przejdź do serwisu</h5>
    <p class="card-text">Poznaj bliżej serwis e-nauka i przeglądaj interesujące treści.</p>
    <a href="#" class="btn btn-dark">Przeglądaj e-nauka</a>
  </div>
</div>

    <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/about-card.png" alt="Card image cap" style="width:70%;height:30%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">O serwisie</h5>
    <p class="card-text">Dowiedz się więcej o serwisie e-nauka i o jego twórcy.</p>
    <a href="About" class="btn btn-dark">O nas&hairsp;&hairsp;</a>
  </div>
</div>


        <div class="card border-dark mb-3" style="width: 18rem;margin:10px 0px 20px 20px;">
  <img class="card-img-top" src="/img/contact-card.png" alt="Card image cap" style="width:70%;height:70%;margin:10px 0px 0px 25px;">
  <div class="card-body">
    <h5 class="card-title">Skontaktuj się z nami</h5>
    <p class="card-text">Widzisz jakiś błąd? Chciałbyś coś ulepszyć? Napisz do nas!</p>
    <a href="Contact" class="btn btn-dark">Kontakt</a>
  </div>
</div>

</div>

        <div style="margin-bottom:150px;">

    </div>

    </div>

</main>

</asp:Content>
