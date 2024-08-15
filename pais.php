<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informações do país</title>
    <link rel="stylesheet" href="assets/css/pais.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <link rel="shortcut icon" href="assets/img/icon.png" type="image/x-icon">
</head>
<body>
    <div class="container">
        <div id="slide-container" class="slide-container">
            <div id="slide">
                <?php
                $conexao = mysqli_connect("localhost", "root", "", "mapamundi");
                if (!$conexao) {
                    die("Erro na conexão: " . mysqli_connect_error());
                }
                $paisId = isset($_GET['id']) ? mysqli_real_escape_string($conexao, $_GET['id']) : '';
                $consulta = "SELECT * FROM paises WHERE nome = '$paisId'";
                $resultado = mysqli_query($conexao, $consulta);
                if (mysqli_num_rows($resultado) > 0) {
                    while ($registro = mysqli_fetch_assoc($resultado)) {
                        echo "
                            <div class='content'>
                                <div class='img_bandeira'>
                                    <img class='flag' src='{$registro['bandeira']}' alt='{$registro['nome']}' srcset=''>
                                    <div class='name'>{$registro['nome']}</div>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/presidente.png);'>
                                <div class='infos'>
                                    <p>PRESIDENTE</p>
                                    <p>{$registro['presidente']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/capital.png);'>
                                <div class='infos'>
                                    <p>CAPITAL</p>
                                    <p>{$registro['capital']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/moeda.png);'>
                                <div class='infos'>
                                    <p>MOEDA</p>
                                    <p>{$registro['moeda']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/idioma.png);'>
                                <div class='infos'>
                                    <p>IDIOMA</p>
                                    <p>{$registro['idioma']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/pib.png);'>
                                <div class='infos'>
                                    <p>PIB</p>
                                    <p>{$registro['pib']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/idh.png);'>
                                <div class='infos'>
                                    <p>IDH</p>
                                    <p>{$registro['idh']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/população.png);'>
                                <div class='infos'>
                                    <p>POPULAÇÃO</p>
                                    <p>{$registro['populacao']}</p>
                                </div>
                            </div>
                            <div class='item' style='background-image: url(assets/img/territorio.png);'>
                                <div class='infos'>
                                    <p>TERRITÓRIO</p>
                                    <p>{$registro['territorio']}</p>
                                </div>
                            </div>";
                    }
                } else {
                    echo "<p>Nenhum registro encontrado.</p>";
                }
                mysqli_close($conexao);
                ?>
            </div>
        </div>
        <div class="buttons">
            <div>
                <button id="prev"><i class="fa-solid fa-angle-left"></i></button>
                <button id="next"><i class="fa-solid fa-angle-right"></i></button>
            </div>
            <a href="index.html">VOLTAR PARA O MAPA</a>
        </div>
    </div>

    <script src="assets/js/pais.js"></script>
</body>
</html>
