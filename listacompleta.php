<?php
    include("config.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon_unimed.png" type="image/x-icon">
    <title>Aniversariantes</title>
    <link rel="stylesheet" href="listacompleta_styles.css">
</head>
<body>
    <section name="aniversariantesHeader" id="" class="aniversariantesHeader">
        <div name="voltarIntranet" id="" class="voltarIntranet">
            <a href="intranet.php"><img src="img/voltar.png" alt="" class="imgVoltarIntranet"><p>Voltar ao Intranet</p></a>
        </div>
    </section>
    <section name="conteudoAniversariantes" id="" class="conteudoAniversariantes">
        <div name="txtAniversarianteSoMes" id="" class="txtAniversarianteSoMes">
            <p>Aniversariantes do Mês</p>
        </div>
        <table class="tabelaAniversariantes">
    <?php
        $sql_code_aniversario = "SELECT 
                                    U.NOME AS NOME,
                                    U.SOBRENOME AS SOBRENOME,
                                    CONCAT(UCASE(SUBSTRING(D.NOME_DEPARTAMENTO, 1, 1)), LCASE(SUBSTRING(D.NOME_DEPARTAMENTO, 2))) AS SETOR, 
                                    DATE_FORMAT(U.DATA_NASCIMENTO, '%d/%m') AS DATA
                                FROM USUARIO U
                                    JOIN DEPARTAMENTO D
                                        ON D.CD_DEPARTAMENTO = U.CD_DEPARTAMENTO
                                WHERE MONTH(U.DATA_NASCIMENTO) = MONTH(NOW())
                                ORDER BY DATA ASC";

        $sql_query_aniversario = $conn->query($sql_code_aniversario) or die ("ERRO ao consultar! " . $conn->error);
        while($dados = $sql_query_aniversario->fetch_assoc()) { ?>
                <tr class="linhaTabelaAniversariantes">
                    <th class="colunaDataAniversariantes"><?php echo $dados['DATA']; ?></th>
                    <th class="ColunaNomeAniversariantes"><?php echo $dados['NOME']." ".$dados['SOBRENOME']; ?></th>
                    <th class="ColunaSetorAniversariantes"><?php echo $dados['SETOR']; ?></th>
                </tr>
        <?php } ?>
        </table>
    </section>
<footer>
    <div name="footercenter" id="" class="footercenter">
       <section name="localizacaoUnimed" id="" class="localizacaoUnimed">
            <div name="iconLocUnimed" id="" class="iconLocUnimed">
                <img draggable="false" src="img/iconloc.png" alt="iconLoc">
            </div>
            <div name="txtLocalizacao" id="" class="txtLocalizacao">
            <a target="_blank" href="https://www.google.com/maps/dir//Estacionamento+UNIMED+-+Centro,+Chapec%C3%B3+-+SC,+89814-480/@-27.1038315,-52.6878714,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x94e4b5c0993b2dc9:0x4c46fa0631db9e03!2m2!1d-52.6178311!2d-27.1038489?entry=ttu">
                <P>Unimed Chapecó Av. Porto Alegre 243E</P>
                <p>Chapecó - SC</p>
                <p>CEP: 89802-130</p>
            </a>
            </div>
       </section>
       <section name="boxContatos" id="" class="boxContatos">
            <p name="txtContatos" id="" class="txtContatos">Siga nossas redes sociais:</p>
            <section name="iconsContatos" id="" class="iconsContatos">
                   <div name="iconsredessociais" id="" class="iconsRedesSociais"><a href="https://www.facebook.com/unimed.chapeco" title="facebook" target="_new"><img draggable="false" src="img/ico_facebook.svg" alt="iconfacebook"></a></div>
                    <div name="iconsRedesSociais" id="" class="iconsRedesSociais"><a href="https://www.instagram.com/unimed.chapeco/" title="instagram" target="_new"><img draggable="false" src="img/ico_instagram.svg" alt="iconintagram"></a></div>
                    <div name="iconsredessociais" id="" class="iconsRedesSociais"><a href="https://www.youtube.com/channel/UCGeen4o2xuq4eAakeyv8LyA" title="youtube" target="_new"><img draggable="false" src="img/ico_youtube.svg" alt="iconyoutube"></a></div>
                    <div name="iconsredessociais" id="" class="iconsRedesSociais"><a href="https://br.linkedin.com/company/unimed-chapeco" title="linkedin" target="_new"><img draggable="false" src="img/ico_linkedin.svg" alt="iconlikedin"></a></div>
            </section>
       </section>
    </div>
    <section name="copyright" class="copyright">
        <a href="#" title="Política de utilização da rede" target="_new"><p name="politicaderede" style="font-weight: bold">Política de utilização da rede</p></a>
        <p>|</p>
        <p name="2023copyright">2023 Copyright - Todos os direitos reservados.</p>
    </section>
</footer>
</body>
</html>