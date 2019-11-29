<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page import="model.Produto"%>

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

        <form action="" class="bloco-logoalt"></form>
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

    <center>
           <div>
            <% Produto produto = (Produto) request.getAttribute("Produto"); 
            Integer atualizar = (Integer) request.getAttribute("Atualizar"); 
            Integer codigo = 0;
            String nome = "";
            String unidade = "";
            Double preco = 0 * 1.0;
            Integer quantidade = 0;
            String descricao = "";
            if(produto != null){
                codigo = produto.getCodigo();
                nome = produto.getNome();
                unidade = produto.getUnidade();
                preco = produto.getPreco();
                quantidade = produto.getQuantidade();
                descricao = produto.getDescricao();
            }
            if(atualizar == 1){%>
            <form action="atualizarProduto.action" method="post">
            <%} else{%>
            <form action="cadastro.action" method="post">
            <%} 
            %>
            <!--<form action="cadastro.action" method="post">-->
                <div>
                    <label>Código</label>
                    <%
                    if(atualizar == 1){%>
                    <input type="number" placeholder="Código" min="0" name="codigo" value="<%=codigo%>">
                    <%
                    } else{%>
                    <input type="number" placeholder="Código do Produto" min="0" name="codigo">
                    <%} 
                    %>
                    <!--<input type="number" placeholder="Código do Produto" min="0" name="codigo">-->
                </div>
                <div>
                    <label>Nome</label>
                    <%
                    if(atualizar == 1){%>
                    <input type="text" placeholder="Nome da Mercadoria" name="nome" value="<%=nome%>">
                    <%
                    } else{%>
                    <input type="text" placeholder="Nome da Mercadoria" name="nome">
                    <%} 
                    %>
                    <!--<input type="text" placeholder="Nome da Mercadoria" name="nome">-->
                </div>
                <div>
                    <label>Unidade</label>
                    <%
                    if(atualizar == 1){%>
                    <<input type="text" placeholder="Unidade da Mercadoria" name="unidade" value="<%=unidade%>">
                    <%
                    } else{%>
                    <<input type="text" placeholder="Unidade da Mercadoria" name="unidade">
                    <%} 
                    %>
                    <!--<input type="text" placeholder="Unidade da Mercadoria" name="unidade">-->
                </div>
                <div>
                    <label>Preço R$</label>
                    <%
                    if(atualizar == 1){%>
                    <input type="number" placeholder="Preço Unitário do Produto" min="0" name="preco" step="any" value="<%=preco%>">
                    <%
                    } else{%>
                    <input type="number" placeholder="Preço Unitário do Produto" min="0" name="preco" step="any">
                    <%} 
                    %>
                    <!--<input type="number" placeholder="Preço Unitário do Produto" min="0" name="preco">-->
                </div>
                <div>
                    <label>Quantidade no Estoque</label>
                    <%
                    if(atualizar == 1){%>
                    <input type="number" placeholder="Quantidade da Mercadoria no Estoque" min="1" name="quantidade" value="<%=quantidade%>">
                    <%
                    } else{%>
                    <input type="number" placeholder="Quantidade da Mercadoria no Estoque" min="1" name="quantidade">
                    <%} 
                    %>
                    <!--<input type="number" placeholder="Quantidade da Mercadoria no Estoque" min="1" name="quantidade">-->
                </div>
                <div>
                    <label>Descrição</label>
                    <%
                    if(atualizar == 1){%>
                    <input type="text" placeholder="Descrição da Mercadoria" name="descricao" value="<%=descricao%>">
                    <%
                    } else{%>
                    <input type="text" placeholder="Descrição da Mercadoria" name="descricao">
                    <%} 
                    %>
                    <!--<input type="text" placeholder="Descrição da Mercadoria" name="descricao">-->
                </div>
                <div>
                    <%
                    if(atualizar == 1){%>
                    <input type="submit" value="Atualizar" class="submitButton">
                    <%
                    } else{%>
                    <input type="submit" value="Salvar" class="submitButton">
                    <%} 
                    %>
                    <!--<input type="submit" value="Salvar" class="submitButton">-->
                </div>
                <div>
                    <% String m = (String) request.getAttribute("mensagem"); 
                        out.print("<label> " + m + " </label>");
                    %>
                </div>
            </form>
        </div>
    </center> 
</main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>

</body>

</html>