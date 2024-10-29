package maher.nabil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String city = request.getParameter("city");
        String region = request.getParameter("region");
        String postalCode = request.getParameter("postalCode");
        String country = request.getParameter("country");
        String conferenceTitle = request.getParameter("conferenceTitle");
        String accommodation = request.getParameter("accommodation");
        String[] attending = (request.getParameterValues("attending[]") != null)
                ? request.getParameterValues("attending[]")
                : new String[] {""};


        if (firstName == null || lastName == null || conferenceTitle == null) {
            response.sendRedirect("error.jsp");
            return;
        }


        String attendingSessions = String.join(", ", attending);


        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_db", "root", "root");


            String sql = "INSERT INTO participants (first_name, last_name, city, region, postal_code, country, conference_title, accommodation, attending_sessions) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, city);
            statement.setString(4, region);
            statement.setString(5, postalCode);
            statement.setString(6, country);
            statement.setString(7, conferenceTitle);
            statement.setString(8, accommodation);
            statement.setString(9, attendingSessions);
            statement.executeUpdate();

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            return;
        }


        response.sendRedirect("confirmation.jsp");
    }
}
