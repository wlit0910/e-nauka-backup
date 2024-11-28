<%@ Page Title="Pętle, tablice. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L04.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="height:auto;">
    <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px;width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
        <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Teoria do zadania</h1>
    </div>

    <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
        <div style="height:auto;">
            <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black; } </style>      
            <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Pętle, tablice w C++" CssClass="labelDemo"></asp:Label>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Pętle i tablice to fundamentalne narzędzia w programowaniu, umożliwiające efektywne wykonywanie operacji na wielu elementach. Pętla pozwala na wielokrotne wykonanie fragmentu kodu, 
                podczas gdy tablica jest strukturą danych służącą do przechowywania wielu elementów tego samego typu.
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
                Typy pętli w C++
            </p>
            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                W C++ możemy wyróżnić 3 główne typy pętli:
            </p>


            <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Pętla for:</span> Najczęściej używana do z góry określonej liczby iteracji.</li>
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Pętla while:</span> Używana, gdy liczba iteracji nie jest z góry znana, ale zależy od warunku.</li>
                <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Pętla do-while:</span> Podobna do <code>while</code>, ale warunek sprawdzany jest po wykonaniu ciała pętli.</li>
            </ul>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Pętla <code>for</code>
            </p>



          <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               Pętla for w C++ jest jedną z podstawowych konstrukcji sterujących, która pozwala na wielokrotne wykonanie określonego fragmentu kodu. Jest szczególnie przydatna, gdy z góry wiemy, ile razy chcemy wykonać dany fragment kodu.
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               Struktura pętli <code>for</code>
            </p>


            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/HewAnyUfOIcHHY9hgoiJ"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Inicjalizacja:</span> Tutaj zazwyczaj deklarujemy i inicjalizujemy zmienną sterującą pętlą. Jest to wykonywane tylko raz, na początku pętli.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Warunek:</span> Jest to wyrażenie logiczne, które decyduje, czy pętla będzie kontynuowana. Jeśli warunek jest prawdziwy, pętla wykonuje się dalej. Gdy warunek jest fałszywy, pętla kończy działanie.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Inkrementacja:</span> Wyrażenie wykonujące się po każdej iteracji pętli, zazwyczaj służy do zmiany wartości zmiennej sterującej.</li>
            </ol>












            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Pętla <code>while</code>
            </p>

          <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               Pętla while w C++ jest jedną z podstawowych konstrukcji iteracyjnych, która pozwala na wielokrotne wykonywanie bloku kodu, dopóki określony warunek logiczny jest spełniony. Jest używana, gdy nie znamy z góry liczby iteracji, które muszą zostać wykonane.
            </p>
                        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               Struktura pętli <code>while</code> i zasada działania:
            </p>

            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mC4tibu6Q7jMkwZx3Ksw"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


         <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Sprawdzenie warunku:</span> Przed każdą iteracją pętli sprawdzany jest warunek logiczny umieszczony w nawiasach okrągłych po słowie kluczowym while.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Wykonanie instrukcji:</span> Jeśli warunek jest prawdziwy (true), wykonywany jest blok kodu znajdujący się wewnątrz nawiasów klamrowych {}.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Powtórzenie:</span> Po wykonaniu bloku kodu, ponownie sprawdzany jest warunek. Proces ten powtarza się, dopóki warunek jest prawdziwy.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Zakończenie pętli:</span> Gdy warunek staje się fałszywy (false), pętla przestaje się wykonywać, a program kontynuuje działanie od instrukcji znajdującej się za pętlą.</li>
            </ol>


          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               Przykład użycia pętli <code>while</code>
            </p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Oto prosty przykład, który ilustruje działanie pętli <code>while</code>:
            </p>

            <div style="width:auto;height:380px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/vg886JFREGZMcYjG73ms"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



             <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                W tym przykładzie pętla while będzie wykonywać się tak długo, jak długo zmienna licznik jest mniejsza od 5. Za każdym razem, gdy pętla się wykonuje, wartość licznik jest zwiększana o 1.
            </p>














            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Pętla <code>do-while</code>
            </p>

                      <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               Pętla do-while w C++ jest jedną z konstrukcji iteracyjnych, która pozwala na wielokrotne wykonywanie określonego bloku kodu, dopóki spełniony jest określony warunek. 
                          Jest szczególnie użyteczna, gdy chcemy, aby blok kodu wykonał się co najmniej raz, niezależnie od tego, czy warunek jest prawdziwy.
            </p>
                        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               Struktura pętli <code>do-while</code> i zasada działania:
            </p>

            <div style="width:auto;height:200px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/UxLkirWFYgt8bV156RFj"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


           <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Wykonanie bloku kodu:</span> Najpierw wykonywany jest blok kodu znajdujący się wewnątrz klamr {}.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Sprawdzenie warunku:</span>  Po wykonaniu bloku kodu, sprawdzany jest warunek umieszczony po słowie kluczowym while.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Powtórzenie lub zakończenie:</span> Jeśli warunek jest prawdziwy (true), pętla wykonuje się ponownie. Jeśli warunek jest fałszywy (false), pętla kończy swoje działanie i program przechodzi do wykonywania kolejnych instrukcji po pętli.</li>
            </ol>

            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
               Przykład użycia pętli <code>do-while</code>
            </p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Oto prosty przykład użycia pętli <code>do-while</code> w C++:
            </p>

            <div style="width:auto;height:360px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/mASwI3d0CMu9oNJHVKUL"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>


             <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
               W tym przykładzie, pętla do-while wypisuje liczby od 1 do 5. Nawet jeśli początkowa wartość zmiennej liczba byłaby większa niż 5, blok kodu wewnątrz pętli wykonałby się przynajmniej raz
            </p>
















            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Tablice
            </p>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                Tablice w C++ to struktury danych, które przechowują wiele elementów tego samego typu w ciągłym obszarze pamięci. 
                Są one używane do przechowywania zbiorów danych, takich jak liczby, znaki czy obiekty, w sposób umożliwiający łatwy dostęp i manipulację.
            </p>

<p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
   Struktura tablic w C++ 
</p>

            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                Tablica w C++ jest sekwencją elementów tego samego typu, które są przechowywane w sąsiadujących komórkach pamięci. Każdy element 
                tablicy jest identyfikowany przez indeks, który zaczyna się od zera. Na przykład, w tablicy int numbers[5], numbers[0] odnosi się do pierwszego elementu, numbers[1] do drugiego, i tak dalej.
            </p>


            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
   Tworzenie tablic
</p>

           <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
               Tablice można tworzyć na kilka sposobów:
            </p>



              <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Deklaracja i inicjalizacja:</span><br>
                    <code><br>int numbers[5]; // Deklaracja tablicy 5-elementowej<br>
int values[3] = {1, 2, 3}; // Deklaracja i inicjalizacja tablicy
</code><br><br>

                </li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Tablice dynamiczne:</span><br>
                    <code><br>
int* dynamicArray = new int[5]; // Dynamiczna alokacja tablicy<br>
delete[] dynamicArray; // Zwolnienie pamięci

                    </code><br><br>
                </li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Tablice wielowymiarowe:</span><br>
<code><br>
    int matrix[3][3] = {<br><br>
    {1, 2, 3},<br>
    {4, 5, 6},<br>
    {7, 8, 9}<br>
}; // Deklaracja i inicjalizacja tablicy 2D

</code><br><br>
                </li>
            </ol>


           <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:20px;">
              Przykład użycia tablicy
           </p>



            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                Pętle i tablice często są używane razem, gdy chcemy operować na wielu elementach jednocześnie. Przykładowo, możemy użyć pętli <code>for</code>, aby przejść przez wszystkie elementy tablicy.
            </p>
        </div>


            <div style="width:auto;height:380px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/m8BZ7zj58pgNyxH7rsJr"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
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
