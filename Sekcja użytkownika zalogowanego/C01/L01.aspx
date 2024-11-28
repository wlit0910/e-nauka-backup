<%@ Page Title="Podstawy C++. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L01.aspx.cs" Inherits="e_nauka.Formularz_internetowy114" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div style="height:auto;">

             <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
      </div>

<%------------------To jest na czerwono--%>
                <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
            <div style="height:auto;">
                <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
                <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Podstawy C++" CssClass="labelDemo"></asp:Label>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    C++ to jeden z najpopularniejszych i najważniejszych języków programowania na świecie. Jest wykorzystywany w tworzeniu aplikacji systemowych, gier, programów użytkowych,
                    a także w oprogramowaniu działającym na urządzeniach wbudowanych, takich jak mikrokontrolery. C++ pozwala programistom na pełną kontrolę nad sprzętem, jednocześnie oferując
                    zaawansowane narzędzia do organizacji kodu. <br><br>
                    C++ jest językiem kompilowanym. Oznacza to, że zanim program będzie mógł zostać uruchomiony, musi zostać "przetłumaczony" (skompilowany) 
                    z kodu źródłowego na kod maszynowy, który komputer rozumie. Tę rolę pełni kompilator.
                </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
                    Pierwszy program w C++ – "Hello, World!"
                </p>


                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Pierwszym programem, który napiszesz w C++, jest klasyczny program wyświetlający tekst na ekranie. W naszym przypadku, będzie to napis "Hello, World!".<br>Oto jak wygląda kod:
                </p>






                <%----------------------------- SNIPPET -----------------------------%>

                <div style="width:auto;height:300px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;">
<iframe
  src="https://carbon.now.sh/embed/PW6sl8V1TwSHi0E3pWYU"
  style="width: 50%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
                    </div>
                <%----------------------------------------------------------%>


                <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:30px;">
                    Omówienie kodu
                </p>

              <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Teraz krok po kroku wyjaśnimy, co ten kod robi:
                </p>

                <style>
                    .label-code { font-size:20px;background-color:#fcd9cc;margin-left:10px;}
                </style>


<ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
  <li style="margin-bottom:10px;"> <code class="label-code">#include &lt;iostream&gt; </code><br>
Ta linia mówi kompilatorowi, aby dołączył bibliotekę o nazwie iostream (wejście-wyjście). Dzięki niej możemy wyświetlać informacje na ekranie (wyjście) lub pobierać dane od użytkownika (wejście).

  </li>
  <li style="margin-bottom:10px;">
      <code class="label-code">int main() </code><br>
      Każdy program w C++ zaczyna się od funkcji main(). Jest to punkt startowy Twojego programu, czyli miejsce, od którego komputer zaczyna wykonywanie kodu.
  </li>
  <li style="margin-bottom:10px;">
      <code class="label-code">std::cout << "Hello, World!" << std::endl;</code><br>
      To najważniejsza linia w naszym programie. <code>std::cout</code> oznacza "wyjście konsoli" (ang. console output),
      czyli strumień, do którego wyślemy tekst. <br>
      Znak <code><<</code> oznacza, że "przekazujemy" tekst <code>"Hello, World!"</code> do konsoli. 
      <code>std::endl</code> to specjalna komenda, która powoduje przejście do nowej linii (czyli odpowiada wciśnięciu klawisza Enter).<br><br>
      Aby nie używać za każdym razem przedrostka <code>std::</code> przed kluczowymi 
      funkcjami programu, możemy dodać przestrzeń nazw <code>using namespace std;</code> nad funkcją <code>int main()</code>. 
      Wtedy - zamiast instrukcji <code>std::cout << "Hello, World!" << std::endl;</code> wystarczy wpisać <code>cout << "Hello World";</code>.

  </li>

   <li style="margin-bottom:10px;">
      <code class="label-code">return 0; </code><br>
      Ta linia mówi kompilatorowi, że program zakończył się pomyślnie. 0 oznacza, że nie było żadnych błędów.
  </li>

</ol>



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


            </div>


        </div>

<%----------------------------------------------------------%>

<div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Przejdź do zadania" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click" />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"   />
 </div>


</div>

</asp:Content>
