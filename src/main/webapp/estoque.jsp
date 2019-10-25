<!DOCTYPE html>
<html lang="en">

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

                            <a href="relatorio-compras" class="text-white">
                                <li>Relatorio de Compras</li>
                            </a>
                            <a href="relatorio-estoque" class="text-white">
                                <li>Relatorio de Estoque</li>
                            </a>
                        </a>
            </ul>
        </nav>

        <script>
            function comprar() {
                alert("Compra Realizada! para maior detalhes consulte o Relatório de Compras");
            }
        </script>
        
        <script>
            function alterar() {
                alert("Produdo Alterado!");
            }
        </script>
        
        <script>
            function excluir() {
                alert("Produto Excluido!");
            }
        </script>

        <form action="" class="bloco-login">
            <div>
                <table border="2">
                    <tr>
                        <th>
                            <center>ID</center>
                        </th>
                        <th>
                            <center>Produto</center>
                        </th>
                        <th>
                            <center>Marca</center>
                        </th>
                        <th>
                            <center>Quantidade</center>
                        </th>
                        <th>
                            <center>Valor Unitario</center>
                        </th>
                    </tr>

                    <tr>
                        <td>
                            <center> <input type="checkbox"> 001</center>
                        </td>
                        <td>
                            <center>Arroz</center>
                        </td>
                        <td>
                            <center>Camil</center>
                        </td>
                        
                        <td>
                            <input type="number">
                        </td>
                        <td>
                            <center>R$ 10,00</center>
                        </td>

                        <tr>
                            <td>
                                <center> <input type="checkbox">002</center>
                            </td>

                            <td>
                                <center>Carne</center>
                            </td>
                            <td>
                                <center>Angus</center>
                            
                            </td>
                            <td>
                                <input type="number">
                            </td>
                            <td>
                                <center>R$ 44,50</center>
                            </td>

                            <tr>
                                <td>
                                    <center> <input type="checkbox"> 003</center>
                                </td>
                                <td>
                                    <center>Açucar</center>
                                </td>
                                <td>
                                    <center>União</center>
                        
                                </td>
                                <td>
                                    <input type="number">
                                </td>
                                <td>
                                    <center>R$ 23,90</center>
                                </td>

                                <tr>

                                    <td>
                                        <center><input type="checkbox"> 004</center>
                                    </td>
                                    <td>
                                        <center>Oleo</center>
                                    </td>
                                    <td>
                                        <center>Soya</center>
                                    </td>
                                    <td>
                                        <input type="number">
                                    </td>
                                    <td>
                                        <center>R$ 3,54</center>
                                    </td>

                                    <tr>
                                        <td>
                                            <center><input type="checkbox"> 005</center>
                                        </td>
                                        <td>
                                            <center>Feijão</center>
                                        </td>
                                        <td>
                                            <center>Fantastico</center>
                                            
                                        </td>
                                        <td>
                                            <input type="number">
                                        </td>
                                        <td>
                                            <center>R$ 3,90</center>
                                        </td>
                                    </tr>
                                </tr>
                            </tr>
                </table>
                <div>
                    <p>
                        <a href="relatorio de Compras.html" onclick="comprar()">Comprar</a>
                        <a href="estoque.html" onclick="alterar()">Alterar</a>
                        <a href="estoque.html" onclick="excluir()">Excluir</a>
                    </p>
                </div>
                <div id="divBusca">
                    <input type="text" id="txtBusca" placeholder="Buscar ID..."/>
                    <button id="btnBusca">Buscar</button>
                  </div>
            </div>
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