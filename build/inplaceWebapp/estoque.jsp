<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gerenciamento de Compras e Mercadorias</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <div class="titulo-principal">
        <h1>Gerenciamento de compra de Mercadorias</h1>
    </div>

    <main class="conteudo">
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
        <div>
            <div>
                <label> Barra de Pesquisa </label>
                <form method='get' action="buscarCodigo.action">
                    <input type='number' placeholder="Código da mercadoria" min='0' name="buscaCodigo">
                    <input type="submit" value="Buscar Código">
                </form>
            </div>
        </div>
        <div>
             <table>
                <tr>
                    <th> Código</th>
                    <th> Nome</th>
                    <th> Unidade</th>
                    <th> Preço R$</th>
                    <th> Quantidade no Estoque</th>
                    <th> Descrição</th>
                    <th> Atualizar</th>
                    <th> Excluir</th>
                </tr>
                <%
                    Produto produto = (Produto) request.getAttribute("Produto"); 
                    Integer produtoCodigo = 0;
                    if(produto != null){ 
                        produtoCodigo = produto.getCodigo();
                    }
                %>
                <!--<input name="codigoProdutoExcluir" hidden value="<%=produtoCodigo%>">-->
                <%
                    if(produto != null){
                            out.print("<tr>");
                                    out.print("<td>" + produto.getCodigo() + "</td>");
                                    out.print("<td>" + produto.getNome() + "</td>");
                                    out.print("<td>" + produto.getUnidade() + "</td>");
                                    out.print("<td>" + produto.getPreco() + "</td>");
                                    out.print("<td>" + produto.getQuantidade() + "</td>");
                                    out.print("<td>" + produto.getDescricao() + "</td>");
                                    out.print("<td> <button  onclick=atualizar("+produto.getCodigo()+") > Atualizar</button> </td>");
                                    out.print("<td> <button  onclick=remover("+produto.getCodigo()+") > Excluir</button></td>");
                            out.print("</tr>");
                    }
                %>
            </table>
            <div>
                <%
                    String mensagem = (String) request.getAttribute("mensagem"); 
                    if(mensagem != null){
                        out.print("<label> " + mensagem + " </label>");
                    }
                %>
            </div>
        
        
        <script type="text/javascript">
            function atualizar(id){
                console.log('atualizar?id='+ id)
                window.location.href = 'atualizar?id='+ id;
            }
            function remover(id){
                console.log('excluir.action?id='+ id)
                window.location.href = 'excluir.action?id='+ id;
            }
        </script> 
    </main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>

</body>

</html>