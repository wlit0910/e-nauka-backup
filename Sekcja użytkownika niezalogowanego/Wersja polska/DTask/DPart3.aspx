<%@ Page Title="Część II. Teoria" Language="C#" MasterPageFile="~/Theory.Master" AutoEventWireup="true" CodeBehind="DPart3.aspx.cs" Inherits="e_nauka.Formularz_internetowy111" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="height:auto;">
          
<%--         <style>
            .label-code { margin-left:40px;}
        </style>--%>

       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Operatory. Instrukcje warunkowe" CssClass="labelDemo"></asp:Label>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Operatory to symbole, które umożliwiają wykonywanie różnych operacji na danych w programie. Instrukcje warunkowe pozwalają na kontrolowanie przepływu programu na podstawie określonych warunków. Oba te elementy są niezbędne w tworzeniu bardziej zaawansowanych programów.
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Operatory
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            W C++ dostępnych jest wiele operatorów, które możemy podzielić na kilka głównych kategorii:
        </p>

        <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Operatory arytmetyczne</span> – służą do wykonywania podstawowych operacji matematycznych, takich jak dodawanie, odejmowanie, mnożenie, dzielenie:</li>

            <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                <code>+</code> – dodawanie<br>
                <code>-</code> – odejmowanie<br>
                <code>*</code> – mnożenie<br>
                <code>/</code> – dzielenie<br>
                <code>%</code> – modulo (reszta z dzielenia)<br>
            </div>
<%--            <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li hidden><code>+</code> – dodawanie</li>
                <li><code>-</code> – odejmowanie</li>
                <li><code>*</code> – mnożenie</li>
                <li><code>/</code> – dzielenie</li>
                <li><code>%</code> – modulo (reszta z dzielenia)</li>
            </ul>--%>

            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Operatory porównania</span> – służą do porównywania wartości i zwracają wartość logiczną <code>true</code> (prawda) lub <code>false</code> (fałsz):</li>
            
            <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                <code>==</code> – równość<br>
                <code>!=</code> – nierówność<br>
                <code>&gt;</code> – większe niż<br>
                <code>&lt;</code> – mniejsze niż<br>
                <code>&gt;=</code> – większe lub równe<br>
                <code>&lt;=</code> – mniejsze lub równe<br>
            </div>

<%--                <li><code>==</code> – równość</li>
                <li><code>!=</code> – nierówność</li>
                <li><code>&gt;</code> – większe niż</li>
                <li><code>&lt;</code> – mniejsze niż</li>
                <li><code>&gt;=</code> – większe lub równe</li>
                <li><code>&lt;=</code> – mniejsze lub równe</li>--%>
           

            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Operatory logiczne</span> – pozwalają na wykonywanie operacji logicznych, często używanych w instrukcjach warunkowych:</li>

                <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                    <code>&amp;&amp;</code> – logiczne "i" (AND)<br>
                    <code>||</code> – logiczne "lub" (OR)<br>
                    <code>!</code> – negacja (NOT)<br>
                 </div>

<%--                <li><code>&amp;&amp;</code> – logiczne "i" (AND)</li>
                <li><code>||</code> – logiczne "lub" (OR)</li>
                <li><code>!</code> – negacja (NOT)</li>--%>
            </ul>


        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Instrukcje warunkowe
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Instrukcje warunkowe pozwalają na podejmowanie decyzji w programie. Najczęściej używaną instrukcją warunkową jest <code>if</code>, która wykonuje określony blok kodu, jeśli spełniony jest określony warunek. Oto podstawowa składnia instrukcji warunkowej <code>if</code>:
</p>

<div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;">
<iframe
  src="https://carbon.now.sh/embed/pojmwJbbAKETuLdMAo1q"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
</div>

<%--    <code class="label-code">
    if (warunek) {<br>
    &emsp;// Kod do wykonania, jeśli warunek jest prawdziwy<br>
    }
    </code>--%>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        Jeśli warunek w nawiasach jest spełniony (tj. zwraca <code>true</code>), program wykona blok kodu znajdujący się wewnątrz nawiasów klamrowych. W przeciwnym razie ten kod zostanie pominięty.
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
        Instrukcja <code>if...else</code>
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        Aby wykonać inny blok kodu, gdy warunek nie jest spełniony, możemy użyć instrukcji <code>else</code>:
    </p>



<div style="width:auto;height:220px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;">
<iframe
  src="https://carbon.now.sh/embed/7VZthg52X4Rj7eEQ1f3N"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
</div>
<%--    <code class="label-code">
    if (warunek) {<br>
    &emsp;// Kod do wykonania, jeśli warunek jest prawdziwy<br>
    } else {<br>
    &emsp;// Kod do wykonania, jeśli warunek jest fałszywy<br>
    }
    </code>--%>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        Przykład ten pokazuje, że jeśli pierwszy warunek nie jest spełniony, program automatycznie przechodzi do wykonania bloku <code>else</code>.
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
        Instrukcja <code>else if</code>
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        Możemy sprawdzać wiele warunków, używając instrukcji <code>else if</code>. Jeśli pierwszy warunek nie zostanie spełniony, sprawdzany jest następny:
    </p>



<div style="width:auto;height:320px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;">
<iframe
  src="https://carbon.now.sh/embed/sVj1VFSwhfDjo6X4xpYD"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
</div>

<%--    <code class="label-code">
    if (warunek1) {<br>
    &emsp;// Kod do wykonania, jeśli warunek1 jest prawdziwy<br>
    } else if (warunek2) {<br>
    &emsp;// Kod do wykonania, jeśli warunek2 jest prawdziwy<br>
    } else {<br>
    &emsp;// Kod do wykonania, jeśli żaden z warunków nie jest prawdziwy<br>
    }
    </code>--%>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        Dzięki temu możemy sprawdzać wiele warunków w logicznej kolejności, co jest przydatne w bardziej złożonych sytuacjach.
    </p>





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
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Wróć" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>





    </div>
</div>


    </div>


</asp:Content>
