<%@ Page Title="Part II. Theory" Language="C#" MasterPageFile="~/DTaskENG/TheoryENG.Master" AutoEventWireup="true" CodeBehind="DPart2ENG.aspx.cs" Inherits="e_nauka.DTaskENG.Formularz_internetowy12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="height:auto;">
          

       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Variables, constants. Data types" CssClass="labelDemo"></asp:Label>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Variables are the basic building blocks of any program. They are used to store data that can change its value while the program is running. In C++, each variable must have a type that tells what kind of data it will store.
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Declaration of variables
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            In C++, before we use a variable, we need to declare it, giving it a data type and a name for the variable. Example of declaring a variable of type <code>int</code>:
        </p>

        <style>
            .label-code { font-size:20px;background-color:#fcd9cc;margin-left:40px;}
        </style>

        <code class="label-code">int number;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            In the above example, <code>int</code> means that the variable <code>number</code> will store integers. <br>We can immediately assign it a value:
        </p>

        <code class="label-code">int number = 5;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Data types
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            In C++ we have many data types, the most important of which are:
        </p>

        <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">int</span> – is used to store integers, e.g. 5, -10.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">float</span> – to store lower precision floating point numbers, e.g. 3.14, 0.001.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">double</span> – to store higher precision floating point numbers, e.g. 2592.00101.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">char</span> – stores single characters, e.g. 'a', 'Z'.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">bool</span> – stores logical values: true or false.</li>
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">string</span> – is used to store strings of characters, e.g. "Hello, World!".</li>
        </ul>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
           Each data type has its own purpose and size in the computer's memory. For example, a variable of type <code>int</code> takes up 4 bytes, a <code>double</code> takes up 8 bytes.
        </p>

<div style="width:auto;height:740px;background-color:white;margin-left:40px;margin-right:40px;text-align:center;justify-content:center;">
        <iframe
  src="https://carbon.now.sh/embed/K7Je4liOBjSf56x5nYsZ"
  style="width: 90%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(0.9); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>


    </div>

        <div>
            <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-bottom:40px;">Effect of the above code: </p>
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
            <span style="font-weight:bold">Constants</span> are values ​​that do not change while the program is running. To declare a constant, we use the keyword <code>const</code>. Example:
        </p>

        <code class="label-code">const double PI = 3.14159;</code>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
            Constant value <code>PI</code> will always have the value 3.14159 and cannot be changed while the program is running.
        </p>


        <div style="width:auto;height:470px;background-color:white;margin-left:40px;margin-right:40px;margin-top:40px;text-align:center;justify-content:center;">
        <iframe
  src="https://carbon.now.sh/embed/WDknB2qt5IhggpW0rLYJ"
  style="width: 90%;max-width:100%;min-width:auto; height: 100%;max-height:100%;min-height:auto;border:0; transform: scale(1); overflow:hidden;"
  sandbox="allow-scripts allow-same-origin">
</iframe>
            </div>



         <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;font-size:30px;margin-top:40px;">
                    C++ Programming Principles
</p>


<p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
                    Here is the most important information <span style="font-weight:bold;">(at this level)</span>, to remember when writing code in C++:
</p>



<ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">


   <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Semicolon at the end of the instruction</span><br>
      Every C++ statement must end with a semicolon (;). <br>
      Example: <code>&ensp;int x = 5; </code>
  </li>


  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Input-output operators</span><br>
      There are two functions available in the iostream library: <code>cout</code> and <code>cin</code>, which are used to communicate with the output and input.<br>
      Function <code>cout</code> prints the specified instructions to the console screen, and the function <code>cin</code> retrieves data from the user into the program.<br>
      Example:<br> 
      <code>cin >> name </code><br>
      <code>cout << "Your name: " << name</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Curly Braces for Code Blocks</span><br>
      Code blocks such as function bodies, loops, or conditionals must be enclosed in curly braces. {...}. <br>
      Example: <br>
    <code>if (x > 0) <br>{<br>
    &emsp; std::cout << "The number is positive!";<br>
}</code>

  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">C++ is case sensitive</span><br>
      C++ is <span style="font-weight:bold;">case-sensitive</span>. This means that the variables <code>int result</code> i <code>int Result</code> are two different variables.
  </li>

  <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Standard libraries and #include directive</span><br>
     To use the functions for input/output (e.g. displaying text on the screen), you must include the appropriate standard libraries. <br>We attach them using the <code>#include</code> directive<br>
     Example: <code>#include &lt;iostream&gt;</code>
      
  </li>

      <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Using namespaces</span><br>
    Many elements of C++ are organized into <span style="font-weight:bold;"> namespaces</span>. <br> 
          The most commonly used namespace is <code>std</code>, that contains basic functions and objects, such as <code>std::cout</code>.<br>
    To avoid having to write <code>std::</code> every time, we can add <code>using namespace std;</code> over the main() function <br> and just type <code>cout << "whatever";</code>.

      
  </li>



</ul>

        <div style="display:block;text-align:right;margin-top:50px;margin-right:40px;">


       <style>.btnTask1 { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;}</style>
       

       <asp:Button ID="Zadanie_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go to task" BackColor="#ff8454" CssClass="btnTask1" OnClick="Zadanie_demo_Click"  />
       
                   
	 </div>


<div style="display:block;text-align:right;margin-top:20px;margin-right:40px;">
    <style>.btnTask { min-width:30%; font-size:20px;font-family: Montserrat, sans-serif;font-weight: bold;color:black; border-radius:5px;opacity:0.8;margin-bottom:200px;}</style>
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"   />
 </div>





    </div>
</div>


    </div>
</asp:Content>
