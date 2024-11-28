<%@ Page Title="Zmienne, stałe. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L02.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div style="height:auto;">
          

       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Zmienne, stałe. Typy danych" CssClass="labelDemo"></asp:Label>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Zmienne to podstawowe elementy każdego programu. Służą one do przechowywania danych, które mogą zmieniać swoją wartość w trakcie działania programu. W C++ każda zmienna musi mieć określony typ, który mówi, jakiego rodzaju dane będą przechowywane.
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Deklaracja zmiennych
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            W C++, zanim użyjemy zmiennej, musimy ją zadeklarować, podając typ danych oraz nazwę zmiennej. Przykład deklaracji zmiennej typu <code>int</code>:
        </p>

        <style>
            .label-code { font-size:20px;background-color:#fcd9cc;margin-left:40px;}
        </style>

        <code class="label-code">int liczba;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            W powyższym przykładzie, <code>int</code> oznacza, że zmienna <code>liczba</code> będzie przechowywać liczby całkowite. <br>Możemy od razu przypisać jej wartość:
        </p>

        <code class="label-code">int liczba = 5;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Typy danych
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            W C++ mamy wiele typów danych, z których najważniejsze to:
        </p>

        <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">int</span> – służy do przechowywania liczb całkowitych, np. 5, -10.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">float</span> – do przechowywania liczb zmiennoprzecinkowych mniejszej precyzji, np. 3.14, 0.001.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">double</span> – do przechowywania liczb zmiennoprzecinkowych większej precyzji, np. 2592.00101.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">char</span> – przechowuje pojedyncze znaki, np. 'a', 'Z'.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">bool</span> – przechowuje wartości logiczne: true (prawda) lub false (fałsz).</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">string</span> – służy do przechowywania ciągów znaków, np. "Hello, World!".</li>
        </ul>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Każdy typ danych ma swoje przeznaczenie i rozmiar w pamięci komputera. Na przykład zmienna typu <code>int</code> zajmuje 4 bajty, a <code>double</code> zajmuje 8 bajtów.
        </p>

<div style="width:auto;height:740px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;">
        <iframe
  src="https://carbon.now.sh/embed/K7Je4liOBjSf56x5nYsZ"
  style="width: 90%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(0.9); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>


    </div>

        <div>
            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-bottom:40px;">Efekt działania powyższego kodu: </p>
        </div>

<div style="width:auto;height:170px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;">
        <iframe
  src="https://carbon.now.sh/embed/RTZJFGFzXURiOSoQ9IXC"
  style="width: 90%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
    </div>


        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Stałe
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Stałe (ang. <span style="font-weight:bold">constants</span>) to wartości, które nie zmieniają się podczas działania programu. Aby zadeklarować stałą, używamy słowa kluczowego <code>const</code>. Przykład:
        </p>

        <code class="label-code">const double PI = 3.14159;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Stała <code>PI</code> zawsze będzie miała wartość 3.14159 i nie można jej zmienić w trakcie działania programu.
        </p>


        <div style="width:auto;height:470px;background-color:white;margin-left:40px;margin-right:40px;margin-top:40px;text-align:center;justify-content:center;">
        <iframe
  src="https://carbon.now.sh/embed/WDknB2qt5IhggpW0rLYJ"
  style="width: 90%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



         <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:30px;margin-top:40px;">
                    Zasady programowania w C++
</p>


<p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Oto najważniejsze informacje <span style="font-weight:bold;">(na tym etapie)</span>, o których warto pamiętać podczas pisania kodu w C++:
</p>



<ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">


   <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Średnik na końcu instrukcji</span><br>
      Każda instrukcja w C++ musi być zakończona średnikiem (;). <br>
      Przykład: <code>&ensp;int x = 5; </code>
  </li>


  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Operatory wejścia-wyjścia</span><br>
      W bibliotece iostream dostępne są dwie funkcje: <code>cout</code> oraz <code>cin</code>, które służą do komunikacji z wyjściem i wejściem.<br>
      Funkcja <code>cout</code> wypisuje wskazane instrukcje na ekran konsoli, a funkcja <code>cin</code> pobiera dane od użytkownika do programu.<br>
      Przykład:<br> 
      <code>cin >> imie </code><br>
      <code>cout << "Twoje imie: " << imie</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Nawiasy klamrowe dla bloków kodu</span><br>
      Bloki kodu, takie jak ciało funkcji, pętle czy instrukcje warunkowe, muszą być otoczone nawiasami klamrowymi {...}. <br>
      Przykład: <br>
    <code>if (x > 0) <br>{<br>
    &emsp; std::cout << "Liczba jest dodatnia!";<br>
}</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">C++ rozróżnia wielkość liter</span><br>
      C++ rozróżnia wielkość liter (ang. <span style="font-weight:bold;">case-sensitive</span>). Oznacza to, że zmienne <code>int wynik</code> i <code>int Wynik</code> to dwie różne zmienne.
  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Biblioteki standardowe i dyrektywa #include</span><br>
     Aby korzystać z funkcji do wejścia/wyjścia (np. wyświetlania tekstu na ekranie), musisz dołączyć odpowiednie biblioteki standardowe. <br>Dołączamy je za pomocą dyrektywy <code>#include</code><br>
     Przykład: <code>#include &lt;iostream&gt;</code>
      
  </li>

      <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Używanie przestrzeni nazw (namespace)</span><br>
    Wiele elementów C++ jest zorganizowanych w przestrzenie nazw (ang.<span style="font-weight:bold;"> namespace</span>). <br> 
          Najczęściej używaną jest przestrzeń <code>std</code>, w której znajdują się podstawowe funkcje i obiekty, takie jak <code>std::cout</code>.<br>
    Aby uniknąć konieczności każdorazowego pisania <code>std::</code>, możemy dodać <code>using namespace std;</code> nad główną funkcją main() <br> i pisać po prostu <code>cout << "cokolwiek";</code>.

      
  </li>



</ul>

        <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Przejdź do zadania" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"   />
 </div>





    </div>
</div>


    </div>

</asp:Content>
