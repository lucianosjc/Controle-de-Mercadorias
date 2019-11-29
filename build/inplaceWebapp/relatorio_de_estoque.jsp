<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page import="model.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gerenciamento de Compras e Mercadorias</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <div class="titulo-principal">
        <h1>Gerenciamento de compra de Mercadorias</h1>
    </div>

    <section class="conteudo">
                 <nav class="menu">
            <ul>
                <a href="index" class="text-white">
                    <li>Home</li>

                    <a href="cadastrar-produtos" class="text-white">
                        <li>Cadastrar Produtos</li>

                        <a href="estoque" class="text-white">
                            <li>Estoque</li>

                            <a href="Carrinho.jsp" class="text-white">
                                    <li>Carrinho</li>

                            <a href="relatorio-compras" class="text-white">
                                <li>Relatorio de Compras</li>
                            </a>
                            <a href="relatorio-estoque" class="text-white">
                                <li>Relatorio de Estoque</li>
                            </a>
                        </a>
            </ul>
        </nav>


    </section>

    <section class="maxw-1000 m-auto">
        <h2>
            <center>Relatorio de Estoque</center>
        </h2>

        <form action="relatorioestoque.action" method="get" class="bloco-relatorio">
            
            <div>
                <input type="submit" value="Gerar Relatório Estoque" class="submitButton"> 
            </div> 
           
            <label> Total de Items no Estoque</label>
            
            <div>
            <% 
                    Integer quantidade = (Integer) request.getAttribute("quantidadeEstoque"); 
                    
                    if(quantidade != null){
                        out.print("<label>" + quantidade + "</label>");
                    } else{
                        out.print("<label>" + 0 + "</label>");
                    }
                %> 
            </div> 

            <table>
                <tr>
                    <th> Código</th>
                    <th> Nome</th>
                    <th> Unidade</th>
                    <th> Preço R$</th>
                    <th> Quantidade</th>
                    <th> Descrição</th>
                </tr>


                    <%
                        String gerarRelatorio = (String) request.getAttribute("gerarRelatorio");
                        if(gerarRelatorio != null){
                            List<Produto> items = (List) request.getAttribute("ListaProdutos");
                            if(items != null){
                                for(Produto p : items){
                                    out.print("<tr>");
                                        out.print("<td>" + p.getCodigo() + "</td>");
                                        out.print("<td>" + p.getNome() + "</td>");
                                        out.print("<td>" + p.getUnidade() + "</td>");
                                        out.print("<td>" + p.getPreco() + "</td>");
                                        out.print("<td>" + p.getQuantidade() + "</td>");
                                        out.print("<td>" + p.getDescricao() + "</td>");
                                    out.print("</tr>");
                                }
                            }
                        } else{
                            String m = (String) request.getAttribute("mensagem"); 
                            if(m != null){
                                out.print(m);
                            }
                        }
                    %>

                    
            </table>
        </form>
    </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>
</body>

</html>