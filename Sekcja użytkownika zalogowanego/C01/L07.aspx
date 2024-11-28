<%@ Page Title="Struktury. Teoria" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="L07.aspx.cs" Inherits="e_nauka.User.Formularz_internetowy2" %>
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
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Struktury" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Struktury w C++ to typy danych zdefiniowane przez użytkownika, które pozwalają na grupowanie różnych typów danych pod jedną nazwą. 
            Są one szczególnie przydatne, gdy chcemy przechowywać logicznie powiązane dane razem, na przykład informacje o studentach, pracownikach czy punktach w przestrzeni.
    </p>





            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Budowa struktur
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     Struktura w C++ jest definiowana za pomocą słowa kluczowego <code>struct</code>, po którym następuje nazwa struktury i blok definiujący jej pola:
    </p>

      <div style="width:auto;height:230px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/5cgbtX6BbzC2nqKXRzM7"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     W powyższym przykładzie struktura Student zawiera cztery pola: imie, nazwisko, wiek i srednia.
    </p>



                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Tworzenie struktur
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Po zdefiniowaniu struktury możemy tworzyć jej obiekty (instancje) i przypisywać wartości do jej pól:          
    </p>


              <div style="width:auto;height:230px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/fgwrhpLSYdIkAqS731op"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Możemy również inicjalizować strukturę podczas jej deklaracji:          
    </p>


                      <div style="width:auto;height:130px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/VjJhmfG3WPCTCpNvXbYV"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Zastosowanie struktur
            </p>
                                
        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Struktury są używane w wielu różnych kontekstach:          
    </p>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Grupowanie danych:</span>  Struktury pozwalają na logiczne grupowanie powiązanych danych, co ułatwia zarządzanie nimi.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Przekazywanie danych do funkcji:</span> Struktury mogą być przekazywane do funkcji jako argumenty, co pozwala na łatwe przekazywanie wielu powiązanych danych.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Tablice struktur:</span> Możemy tworzyć tablice struktur, co jest przydatne, gdy chcemy przechowywać wiele obiektów tego samego typu.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Złożone struktury danych:</span> Struktury mogą zawierać inne struktury, co pozwala na tworzenie bardziej złożonych struktur danych.</li>
            </ol>







          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Przykład użycia struktury
            </p>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     Oto przykład, który pokazuje, jak można używać struktur do przechowywania i wyświetlania informacji o studentach:
    </p>


            <div style="width:auto;height:580px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/qJpZGS4dmKenTTuYRfmw"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     W tym przykładzie struktura Student jest używana do przechowywania informacji o studencie, a funkcja wyswietlStudenta wyświetla te informacje.
    </p>







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
