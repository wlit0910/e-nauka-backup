<%@ Page Title="Structures" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EL07.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                    <div style="height:auto;">


       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Structures" CssClass="labelDemo"></asp:Label>



        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Structures in C++ are user-defined data types that allow you to group different types of data under one name. They are especially useful when you want to store logically related data together, such as information about students, employees, or points in space.
    </p>



            <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Construction of structures
            </p>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     A structure in C++ is defined with the <code>struct</code> keyword, followed by the name of the structure and a block defining its fields:
    </p>

      <div style="width:auto;height:230px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/5cgbtX6BbzC2nqKXRzM7"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

     <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     In the above example, the Student structure contains four fields: imie, nazwisko, wiek i srednia.
    </p>



                    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Creating structures
            </p>

                <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
       Once the structure is defined, we can create its objects (instances) and assign values ​​to its fields:         
    </p>


              <div style="width:auto;height:230px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/fgwrhpLSYdIkAqS731op"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



                        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     We can also initialize a structure during its declaration:     
    </p>


                      <div style="width:auto;height:130px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/VjJhmfG3WPCTCpNvXbYV"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
               Application of structures
            </p>
                                
        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
      Structures are used in many different contexts:         
    </p>


             <ol style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Data grouping:</span> Structures allow you to logically group related data, making it easier to manage.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Passing data to functions:</span> Structures can be passed to functions as arguments, allowing you to easily pass lots of related data.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Structure tables:</span> We can create arrays of structures, which is useful when we want to store multiple objects of the same type.</li>
                <li style="margin-bottom:10px;"><span style="background-color:#fce2c0;">Complex data structures:</span> Structures can contain other structures, allowing you to create more complex data structures.</li>
            </ol>



          <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:50px;font-size:30px;">
                Example of using the structure
            </p>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
     Here is an example that shows how structures can be used to store and display student information:
    </p>


            <div style="width:auto;height:580px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;margin-top:30px;margin-bottom:30px;">
                <iframe
  src="https://carbon.now.sh/embed/qJpZGS4dmKenTTuYRfmw"
  style="width: 60%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto; border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
    In this example, the Student structure is used to store information about a student, and the wyswietlStudenta() function displays this information.
    </p>



  </div>


                            <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to task" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>


            </div>
            </div>

</asp:Content>
