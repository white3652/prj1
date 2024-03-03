package checkId;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import human.dao.MemberDAO;
import human.dto.MemberDTO;

@WebServlet("/checkId")
public class IdCheckServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String member_id = request.getParameter("member_id");

        MemberDAO memberDAO = new MemberDAO();
        int result;
		try {
			result = memberDAO.checkId(member_id);
			request.setAttribute("member_id", member_id);
			request.setAttribute("result", result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        //response.getWriter().write(String.valueOf(result));
    }
}