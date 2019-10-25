<!DOCTYPE html>
<html lang="en">

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
            <center>Relatorio de Compras</center>
        </h2>

        <form action="" class="bloco-relatorio">
            <div>

                <table>
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
                            <center>Unidade</center>
                        </th>
                        <th>
                            <center>Valor Unitario</center>
                        </th>
                    </tr>

                    <tr>

                        <td>
                            <center>001</center>
                        </td>
                        <td>
                            <center>Arroz</center>
                        </td>
                        <td>
                            <center>Camil</center>
                        </td>
                        <td>
                            <center>5 KL</center>
                        </td>
                        <td>
                            <center>R$ 10,00</center>
                        </td>

                        <tr>

                            <td>
                                <center>002</center>
                            </td>

                            <td>
                                <center>Carne</center>
                            </td>
                            <td>
                                <center>Angus</center>
                            </td>

                            <td>
                                <center>1 KL</center>
                            </td>
                            <td>
                                <center>R$ 44,50</center>
                            </td>

                            <tr>

                                <td>
                                    <center>003</center>
                                </td>
                                <td>
                                    <center>Oleo</center>
                                </td>
                                <td>
                                    <center>Soya</center>
                                </td>

                                <td>
                                    <center>1 LT</center>
                                </td>
                                <td>
                                    <center>R$ 5,90</center>
                                </td>
                            </tr>
                            
                        </tr>
                    </tr>
                    </tr>
                </table>
        </form>
    </section>

    <section class="maxw-1000 m-auto">
        <h4 class="mt-4"> Total de Compras: R$ 60,40 </h4>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>
</body>