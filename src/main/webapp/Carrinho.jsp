<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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

        </form>
    </main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>