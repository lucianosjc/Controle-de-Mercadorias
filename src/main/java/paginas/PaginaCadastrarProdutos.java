package paginas;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cadastrar-produtos")
public class PaginaCadastrarProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        
        ServletContext sc = req.getServletContext();

        req.setAttribute("Atualizar", 0);
        
        try{
            sc.getRequestDispatcher("/cadastrar_produtos.jsp").forward(req, resp);            
            } catch (Exception e){}
    }
}

