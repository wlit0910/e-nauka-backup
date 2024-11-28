<%@ Page Title="Funkcje. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L05.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div style="height:auto;">


       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Funkcje" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Funkcje w C++ to samodzielne bloki kodu, które wykonują określone zadania i mogą być wielokrotnie wywoływane w programie. Pomagają one uporządkować kod, dzieląc go na mniejsze, łatwiejsze do zarządzania części, co jest kluczowe dla efektywności i czytelności programu
    </p>





            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Struktura funkcji
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Funkcja w C++ składa się z kilku podstawowych elementów:
    </p>




             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Typ zwracany:</span> Określa typ danych, które funkcja zwraca. Może to być dowolny typ danych, np. int, float, void (jeśli funkcja nic nie zwraca).</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Nazwa funkcji:</span> Unikalna nazwa identyfikująca funkcję.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Lista argumentów:</span> Parametry przekazywane do funkcji. Mogą być puste lub zawierać jeden lub więcej argumentów.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Ciało funkcji:</span> Blok kodu zawarty w nawiasach klamrowych {}, który wykonuje zadanie funkcji.</li>
            </ol>

             <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Struktura przykładowej funkcji:
    </p>


            <div style="width:auto;height:170px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/yW9N6BOVh6Pole98Hzpx"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>





          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Tworzenie funkcji
            </p>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Funkcje w C++ można tworzyć na kilka sposobów:
    </p>

                     <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Definicja funkcji:</span> Pełna definicja funkcji zawierająca jej ciało.
            <div style="width:auto;height:170px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/0Ysd90V8DY0LD83Riwgs"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

                </li>

                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Prototyp funkcji:</span>  Deklaracja funkcji bez jej ciała, umieszczana przed funkcją main(). Definicja funkcji znajduje się później w kodzie.
                    <div style="width:auto;height:300px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/bqC7YEatDthAzJmiG6MD"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
                           </div>
                </li>


                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Funkcje w bibliotekach:</span> Funkcje mogą być zdefiniowane w oddzielnych plikach nagłówkowych (.h) i zaimplementowane w plikach źródłowych (.cpp). 
                    Umożliwia to lepszą organizację kodu i ponowne użycie funkcji w różnych projektach.</li>
            </ol>








               <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Zastosowania funkcji
            </p>
                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Funkcje są używane do:
    </p>

                     <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Modularności:</span> Dzielą program na mniejsze części, co ułatwia zarządzanie i debugowanie.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Ponownego użycia kodu:</span> Funkcje mogą być wywoływane wielokrotnie w różnych miejscach programu, co zmniejsza duplikację kodu.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Czytelności:</span> Poprawiają czytelność kodu, ponieważ każda funkcja wykonuje jedno, dobrze zdefiniowane zadanie.</li>

            </ul>

  </div>


                            <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Przejdź do zadania" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>


            </div>
            </div>


</asp:Content>
