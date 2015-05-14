<%@ page import="java.sql.*"%>

   <%
         String url = "jdbc:mysql://sql2.njit.edu/svj5?user=svj5_proj&password=" + request.getParameter("password");
         Connection connection = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         try {
           connection = DriverManager.getConnection(url);
         }catch (Exception ex) {
           out.println("Unable to connect to database. Please check the password and "); %>
               <%
               return;
         }
         Statement statement = connection.createStatement();
         int result;

         if ((request.getParameter("update")).equals("insert")) {
           try {
               result = statement.executeUpdate("INSERT INTO Members (clubMembers) VALUE ('" + request.getParameter("newMemberName") + "')");
               if (result == 1)
                 out.println("User '" + request.getParameter("newMemberName") + "' was successfully added to members list");
               }catch (Exception ex) {
               out.println("ERROR: user '" + request.getParameter("newMemberName") + "' already exists in members list.");
               }
         }
         else{
           try {
           result = statement.executeUpdate("DELETE FROM Members WHERE clubMembers = '" + request.getParameter("newMemberName") + "'");
               if (result == 1)
                 out.println("User '" + request.getParameter("newMemberName") + "' was successfully deleted from members list");
               else
                 out.println("ERROR: User '" + request.getParameter("newMemberName") + "' did not exist in members list");
               } catch (Exception ex) {
               out.println("ERROR: " + ex.getMessage());
           }
         }

         statement.close();
         connection.close();

       %>