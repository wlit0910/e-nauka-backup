<%@ Page Title="Operators. Conditional statements" Language="C#" MasterPageFile="~/UserENG/UserEnglish.Master" AutoEventWireup="true" CodeBehind="EL03.aspx.cs" Inherits="e_nauka.UserENG.Formularz_internetowy2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div style="height:auto;">
          
<%--         <style>
            .label-code { margin-left:40px;}
        </style>--%>

       <div style="background-color:#ff8454;border-radius:20px;border-style:solid;border-color:#141414;margin-top:70px; width:60%;height:auto;justify-content:center;display: block;margin-left: auto;margin-right: auto;margin-bottom:40px;">
            <h1 style="font-family: Montserrat, sans-serif;display:flex;justify-content:center;font-weight: normal;font-size:55px;">Theory for the task</h1>
      </div>

        <div style="width:auto;height:auto;margin-left:100px;margin-right:100px;text-align:left;">
    <div style="height:auto;">
        <style>.labelDemo { font-size:55px;font-family: Montserrat, sans-serif;font-weight: normal;margin-top:-8px;margin-left:30px;color:black;} </style>      
        <asp:Label ID="TytulLekcji_Demo" runat="server" Text="Operators. Conditional statements" CssClass="labelDemo"></asp:Label>


        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
Operators are symbols that allow you to perform various operations on data in a program. Conditional statements allow you to control the flow of the program based on certain conditions. 
            Both of these elements are essential for creating more advanced programs.
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Operators
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
           There are many operators available in C++, which can be divided into several main categories:
        </p>

        <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Arithmetic operators</span> – are used to perform basic mathematical operations such as addition, subtraction, multiplication, division:</li>

            <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                <code>+</code> – addition<br>
                <code>-</code> – subtraction<br>
                <code>*</code> – multiplication<br>
                <code>/</code> – division<br>
                <code>%</code> – modulo (remainder of division)<br>
            </div>
<%--            <ul style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:10px;">
                <li hidden><code>+</code> – dodawanie</li>
                <li><code>-</code> – odejmowanie</li>
                <li><code>*</code> – mnożenie</li>
                <li><code>/</code> – dzielenie</li>
                <li><code>%</code> – modulo (reszta z dzielenia)</li>
            </ul>--%>

            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Comparison operators</span> – are used to compare values ​​and return a logical value <code>true</code> or <code>false</code>:</li>
            
            <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                <code>==</code> – equality<br>
                <code>!=</code> – inequality<br>
                <code>&gt;</code> – bigger than<br>
                <code>&lt;</code> – smaller than<br>
                <code>&gt;=</code> – greater than or equal to<br>
                <code>&lt;=</code> – less than or equal to<br>
            </div>

<%--                <li><code>==</code> – równość</li>
                <li><code>!=</code> – nierówność</li>
                <li><code>&gt;</code> – większe niż</li>
                <li><code>&lt;</code> – mniejsze niż</li>
                <li><code>&gt;=</code> – większe lub równe</li>
                <li><code>&lt;=</code> – mniejsze lub równe</li>--%>
           

            <li style="margin-bottom:10px;"><span style="font-size:20px;background-color:#fce2c0;">Logical operators</span> – allow you to perform logical operations often used in conditional statements:</li>

                <div style="margin-top:10px;margin-left:40px;margin-bottom:10px;">
                    <code>&amp;&amp;</code> – logical "ang" (AND)<br>
                    <code>||</code> – logical "or" (OR)<br>
                    <code>!</code> – negation (NOT)<br>
                 </div>

<%--                <li><code>&amp;&amp;</code> – logiczne "i" (AND)</li>
                <li><code>||</code> – logiczne "lub" (OR)</li>
                <li><code>!</code> – negacja (NOT)</li>--%>
            </ul>


        <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
            Conditional statements
        </p>

        <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
           Conditional statements allow you to make decisions in a program. The most commonly used conditional statement is <code>if</code>, which executes a specific block of code if a specific condition is met. 
            Here is the basic syntax of a conditional statement <code>if</code>:
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
        If the condition in the brackets is true (i.e. returns <code>true</code>), the program will execute the code block inside the curly braces. Otherwise, this code will be skipped.
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
        Instruction <code>if...else</code>
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        To execute another block of code when the condition is not met, we can use the statement <code>else</code>:
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
        This example shows that if the first condition is not met, the program automatically proceeds to the execution of the block <code>else</code>.
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: 500;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;font-size:30px;">
        Instruction <code>else if</code>
    </p>

    <p style="font-family: Montserrat, sans-serif;font-weight: normal;margin-left:40px;margin-right:40px;text-align:justify;margin-top:30px;">
        We can check multiple conditions using the statement <code>else if</code>. If the first condition is not met, the next one is checked:
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
        This allows us to check multiple conditions in a logical order, which is useful in more complex situations.
    </p>




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
    <asp:Button ID="Wroc_demo" runat="server" Height="70px" BorderStyle="Solid" BorderColor="#141414" Text="Go back" BackColor="#ff8454" CssClass="btnTask" OnClick="Wroc_demo_Click"    />
 </div>





    </div>
</div>


    </div>
</asp:Content>
