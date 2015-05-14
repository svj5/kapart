
  <html>
  <head>
  <title>Hello from JSP</title>
  <%!
  String message = "Hello, World. From JSP test page Tomcat is running.";
  %>
  </head>
  <body>
  <hr color="#000000" />
  <center>
  <h2><font color="#3366cc"><%= message%></font></h2>
  <h3><font color="#0000ff"><%= new java.util.Date() %> </font></h3>
  <hr color="#000000" />
  </center>
  </body>
  </html>

--------------------------------------------------------------------------------




//out.println ( "hello");

//conn = DriverManager.getConnection("jdbc:mysql://sql2.njit.edu/svj5_proj", "svj5_proj", "WtZCTlJE" );

//if(insert.equals(insertordelete)) 
//{
   Statement stm = conn.createStatement();
   //String insertdata = "INSERT into Members VALUES ('"   + 'Moe' +"')"   ; 
   
   //out.println (    insertdata    );
   
   //stm.executeUpdate(insertdata);
//}