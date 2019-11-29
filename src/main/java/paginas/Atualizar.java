import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;
import model.ProdutoDAOImpl;

@WebServlet( urlPatterns={"/atualizar"})
public class Atualizar extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        
        ServletContext sc = req.getServletContext();
        ProdutoDAOImpl pd = new ProdutoDAOImpl();

        try{
            Integer codigo = Integer.parseInt(req.getParameter("id"));
            System.out.print("Codigo e " + codigo);
            Produto produto = pd.findByCodigo(codigo);
            req.setAttribute("Produto", produto);
            req.setAttribute("Atualizar", 1);
            System.out.print("Produto e " + produto.getNome());
        } catch(Exception e ){
            System.out.print("Erro " + e);
        }

        try{
            sc.getRequestDispatcher("/cadastrar_produtos.jsp").forward(req, resp);            
            } catch (Exception e){}
    }
}