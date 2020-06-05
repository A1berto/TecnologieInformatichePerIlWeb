package web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet("/ListaSpesa")
public class ListaSpesa extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<String> listaSpesa= (List<String>)request.getSession().getAttribute("listaSpesa");
        if(listaSpesa==null){
            listaSpesa = new ArrayList<String>();
            request.getSession().setAttribute("listaSpesa",listaSpesa);
        }

        String nomeProdotto = request.getParameter("nomeProdotto");
        String categoriaProdotto = request.getParameter("categoriaProdotto");
        String quantitaProdotto = request.getParameter("quantitaProdotto");
        if(nomeProdotto != null && !nomeProdotto.trim().equals("") ){
            if(listaSpesa.contains(nomeProdotto)){
                PrintWriter out= response.getWriter();
                out.append("<p>Hai inserito due elementi uguali</p>");
                listaSpesa.remove(nomeProdotto);
            }
            nomeProdotto= nomeProdotto.concat(" - " + categoriaProdotto + " - " + quantitaProdotto);
            listaSpesa.add(nomeProdotto);
            Collections.reverse(listaSpesa);
        }
        //la metto qui sotto per fare in modo che prima vengono aggiornati i dati e dopo li visualizzo
        request.getServletContext().getRequestDispatcher("/jsp/lista_spesa.jsp").include(request,response);

    }
}
