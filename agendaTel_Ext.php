<?php
    session_start();
    if(empty($_SESSION)){
        print "<script>location.href='index.php';</script>";
    }

    include("config.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon_unimed.png" type="image/x-icon">
    <link rel="stylesheet" href="agendaTel_Ext.css">
    <title>Agenda Telefônica Externos</title>
</head>
<body>
<!--HEADER-->
<header>
        <div class="header">
            <a href="https://www.unimed.coop.br/site/web/chapeco"><img draggable="false" name="" id="" class="headerImgLogo" src="img/logo_unimed.png" alt=""></a>

        
            <div class="form">
                <input type="text" name="barraDePesquisa" id="search-input" class="headerBarraDePesquisa" accesskey="p" placeholder="Faça a sua Pesquisa..." type="search">
                <button class="searchbtn" onclick="searchText()">Pesquisar</button>
            </div>
            
            <div name="usuario" id="usuario" class="usuario">
                <h1 name="nomeUsuario" id="nomeusuario" class="headerNomeUsuario">
                    <?php
                        print $_SESSION["nome"];
                    ?>
                </h1>

                <img draggable="false" name="imgUsuario" id="imgusuario" class="headerImgUsuario" src="img/perfil.png" alt="">

                <?php
                    print "<button accesskey='s' class='btnSair'><a href='logout.php'>Sair</a></button>";
                ?>
            </div>

            
        </div> 
   </header>
<!--CONTEUDO-->
<div name="conteudo" id="conteudo" class="conteudo">
<!--navegação-->
    <nav name="navegacao" id="" class="navegacao">
        <ul class="nav-list">
            <li id="nav"><a accesskey="a" href="#" onmouseover="showModal()" onmouseout="hideModal()">Acessibilidade</a>
            <div id="modal" class="modal">
                                <div name="internoModel" class="internoModel">
                                    <section name="infoAcessibilidade" class="infoAcessibilidade">
                                        <div name="txtAcessibilidade" class="txtAcessibilidade">
                                            <p>
                                            Para aumentar ou diminuir a visualização do conteúdo, segure a tecla "ctrl" e pressione + ou - no seu teclado.
                                            </p>
                                        </div>
                                        <hr class="divisaoInfoAcessibilidade">
                                        <div name="txtcomoUsar" class="txtcomoUsar">
                                            <h3>
                                            Se preferir, use as teclas de atalho (acesskeys) para facilitar sua navegação:
                                            </h3>
                                            <br>
                                            <p>
                                            No Internet Explorer segure "ALT" mais a tecla desejada; Em outros navegadores, segure "ALT + SHIFT" e a tecla correspondente.
                                            </p>
                                        </div>
                                    </section>
                                    <hr class="divisaoAcessibilidade">
                                    <section name="boxAtalhos" class="boxAtalhos">
                                        <div name="linha1Acessibilidade" class="linhaAcessibilidade">
                                            <div class="botaoAcessibilidade">ALT</div>
                                            <p class="txtbotaoAcessibilidade">+</p>
                                            <div class="botaoAcessibilidade">T</div>
                                            <p class="txtbotaoAcessibilidade">=</p>
                                            <p class="txtbotaoAcessibilidade">TOPO</p>
                                        </div>
                                        <div name="linha2Assecibilidade" class="linhaAcessibilidade">
                                            <div class="botaoAcessibilidade">ALT</div>
                                            <p class="txtbotaoAcessibilidade">+</p>
                                            <div class="botaoAcessibilidade">S</div>
                                            <p class="txtbotaoAcessibilidade">=</p>
                                            <p class="txtbotaoAcessibilidade">SAIR</p>
                                        </div>
                                        <div name="linha3Assecibilidade" class="linhaAcessibilidade">
                                            <div class="botaoAcessibilidade">ALT</div>
                                            <p class="txtbotaoAcessibilidade">+</p>
                                            <div class="botaoAcessibilidade">A</div>
                                            <p class="txtbotaoAcessibilidade">=</p>
                                            <p class="txtbotaoAcessibilidade">ACESSIBILIDADE</p>
                                        </div>
                                        <div name="linha4Assecibilidade" class="linhaAcessibilidade">
                                            <div class="botaoAcessibilidade">ALT</div>
                                            <p class="txtbotaoAcessibilidade">+</p>
                                            <div class="botaoAcessibilidade">P</div>
                                            <p class="txtbotaoAcessibilidade">=</p>
                                            <p class="txtbotaoAcessibilidade">PESQUISAR</p>
                                        </div>
                                    </section>
                                </div>
                            </div>
            </li>
            <hr>
            <li id="nav"><a href="intranet.php" class="pg">Intranet</a></li>
            <hr>
            <li id="nav" class="pgatual"><a accesskey="t" href="agendaTel_Int.php">Agenda Telefônica</a></li>
            <hr>
            <li id="nav"><a href="siglario_Sig.php">Siglário</a></li>
            <hr>
            <li id="nav"><a href="documentos.php">Documentos</a></li>
        </ul>
    </nav>
<!--pesquisa agenda-->
    <section name="boxPesquisaNumeros" id="" class="boxPesquisaNumeros">
        <div name="boxRamaisIntExt" id="" class="boxRamaisIntExt">
            <div name="boxInternos47" id="" class="boxInternos47">
                <div name="paginaPesquisarInterenos" id="" class="paginaPesquisarInterenos">
                    <a href="agendaTel_Int.php">
                        Ramais Internos
                    </a>
                </div>
            </div>
            <hr class="divisaoInternosExternos">
            <div name="boxExternos47" id="" class="boxExternos47">
                <div name="paginaPesquisarExternos" id="" class="paginaPesquisarExternos">
                    <a href="#">
                        Ramais Externos
                    </a>
                </div>
            </div>
        </div>
        <hr class="divisaoNumerosPesquisa">
        <div name="boxSearchsRamaisExternos" id="" class="boxSearchsRamaisExternos">
            <div name="boxProcurarPorSetor" id="" class="boxProcurarPorSetor">

                <div name="boxProcurarPor" id="" class="boxProcurarPor">
                    <div name="txtProcurarPor" id="" class="txtprocurar">Procurar Por:</div>
                    <input name="searchProcurarPor" id="searchProcurarPor" class="searchProcurarPor" type="search" value="<?php if(isset($_GET['search_pesquisa'])) echo $_GET['search_pesquisa']; ?>" placeholder="Nome">
                </div>

                <div name="boxProcurarTipo" id="" class="boxProcurarTipo">
                    <div name="txtProcurartipos" id="" class="txtprocurar">Tipo:</div>

                    <select title="tipos" name="" id="tipo" class="selecioneTipos">
                        <?php
                            $sql_code_tipo = "SELECT * FROM TIPO_CARGO ORDER BY TIPO_CARGO ASC";
                            $sql_query_tipo = $conn->query($sql_code_tipo) or die ($conn->error);
                            while($tipo = $sql_query_tipo->fetch_assoc()){ ?>
                                <option <?php if(isset($_GET['tipo']) && $_GET['tipo'] == $tipo['CD_TIPO_CARGO']) echo "selected" ?>value="<?php echo $tipo['CD_TIPO_CARGO']; ?>"> <?php echo $tipo['TIPO_CARGO']; ?> </option>
                            <?php } ?>
                    </select>

                    <script>
                        var search_pesquisa = document.getElementById('searchProcurarPor');

                        search_pesquisa.addEventListener("keydown", function(event) {
                            if (event.key === "Enter") 
                            {
                                searchPesquisa();
                            }
                        });

                        var search_tipo = document.getElementById('tipo');

                        search_tipo.addEventListener("keydown", function(event) {
                            if (event.key === "Enter") 
                            {
                                searchPesquisa();
                            }
                        });

                        function searchPesquisa()
                            {
                                window.location = 'agendaTel_Ext.php?search_pesquisa='+search_pesquisa.value+'&search_tipo='+search_tipo.value+'&pagina=1';
                            }
                     </script>

                </div>
            </div>
        </div>
    </section>

                    
<!--lista agenda-->
    <?php

        if(!isset($_GET['search_tipo']) || empty($_GET['search_tipo'])){ ?>
            <section name="boxListaAgenda" id="" class="boxListaAgenda">
            <table class="tabelaAgendaExternosColaboradores">
                <tr class="linhaCorpo">
                    <td class="linhaCorpo">Digite ou selecione algo para pesquisar e pressione a tecla 'Enter'.</td>
                </tr>
        <?php }

        else {
            $pesquisa = $_GET['search_pesquisa'];
            $tipo_pesquisa = $_GET['search_tipo'];
            $pagina = 1;
                if(isset($_GET['pagina'])){
                    $pagina = filter_input(INPUT_GET, "pagina", FILTER_VALIDATE_INT);
                }                    
                    if(!$pagina || empty($_GET['pagina'])){
                        $pagina = 1;
                    }

            $limite = 10;
            $inicio = ($pagina * $limite) - $limite; 

            if($_GET['search_tipo'] == 'C') { ?>
                <section name="boxListaAgenda" id="" class="boxListaAgenda">
                <table class="tabelaAgendaExternosColaboradores">
                <tr class="linhaHeader">
                    <th class="colunaHeaderTipo">TIPO</th>
                    <th class="colunaHeaderNome">NOME</th>
                    <th class="colunaHeaderSetor">SETOR</th>
                    <th class="colunaHeaderTelefone">TELEFONE</th>
                    <th class="colunaHeaderCelular">CELULAR</th>
                    <th class="colunaHeaderCelular">CELULAR 2</th>
                </tr>
                
                <?php
                $sql_code_colaborador = "SELECT 
                                            UPPER(E.NOME) AS NOME,
                                            UPPER(E.SOBRENOME) AS SOBRENOME, 
                                            UPPER(E.TELEFONE) AS TELEFONE,
                                            UPPER(E.CELULAR1) AS CELULAR1,
                                            UPPER(E.CELULAR2) AS CELULAR2,
                                            UPPER(D.NOME_DEPARTAMENTO) AS SETOR, 
                                            UPPER(TP.TIPO_CARGO) AS TIPO
                                        FROM EXTERNO E
                                            JOIN DEPARTAMENTO D
                                                ON D.CD_DEPARTAMENTO = E.CD_DEPARTAMENTO
                                            JOIN TIPO_CARGO TP
                                                ON TP.CD_TIPO_CARGO = E.CD_TIPO_CARGO
                                        WHERE E.CD_TIPO_CARGO = 'C'
                                        AND (E.NOME LIKE '%$pesquisa%' OR E.SOBRENOME LIKE '%$pesquisa%')";
                $registros = $conn->query($sql_code_colaborador)->num_rows;
                $total_paginas = ceil($registros/$limite);
                $sql_code_colaborador .= " LIMIT $inicio, $limite";
                $sql_query_colaborador = $conn->query($sql_code_colaborador) or die ("ERRO ao consultar " . $conn->error);

                if($sql_query_colaborador->num_rows == 0){ ?>
                        <tr class="linhaCorpo">
                            <td class="linhaCorpo">Nenhum resultado encontrado...</td>
                        </tr>
                <?php }
                    else{
                        while ($dados_colaborador = $sql_query_colaborador->fetch_assoc()){ ?>
                            <tr class="linhaCorpo">
                            <td class="colunaCorpoTipo"><?php echo $dados_colaborador['TIPO']; ?></td>
                            <td class="colunaCorpoNome"><?php echo $dados_colaborador['NOME']." ".$dados_colaborador['SOBRENOME']; ?></td>
                            <td class="colunaCorpoSetor"><?php echo $dados_colaborador['SETOR']; ?></td>
                            <td class="colunaCorpoTelefone"><?php echo $dados_colaborador['TELEFONE']; ?></td>
                            <td class="colunaCorpoCelular"><?php echo $dados_colaborador['CELULAR1']; ?></td>
                            <td class="colunaCorpoCelular"><?php echo $dados_colaborador['CELULAR1']; ?></td>
                        </tr>
                        <?php }
                    }
            }

                if($_GET['search_tipo'] == 'F'){ ?>
                    <section name="boxListaAgenda" id="" class="boxListaAgenda">
                    <table class="tabelaAgendaExternosFornecedores">
                    <tr class="linhaHeader">
                        <th class="colunaHeaderTipo">TIPO</th>
                        <th class="colunaHeaderNome">NOME</th>
                        <th class="colunaHeaderMunicipio">MUNICIPIO</th>
                        <th class="colunaHeaderBairro">BAIRRO</th>
                        <th class="colunaHeaderTelefone">TELEFONE</th>
                    </tr> 
                
                <?php
                $sql_code_fornecedor = "SELECT 
                                            UPPER(E.NOME) AS NOME,
                                            UPPER(E.SOBRENOME) AS SOBRENOME, 
                                            UPPER(EN.MUNICIPIO) AS MUNICIPIO,
                                            UPPER(EN.BAIRRO) AS BAIRRO,
                                            UPPER(E.TELEFONE) AS TELEFONE,
                                            UPPER(TP.TIPO_CARGO) AS TIPO
                                        FROM EXTERNO E
                                            JOIN TIPO_CARGO TP
                                                ON TP.CD_TIPO_CARGO = E.CD_TIPO_CARGO
                                            JOIN ENDERECO_EXTERNO EN
                                                ON EN.CD_EXTERNO = E.CD_EXTERNO
                                        WHERE E.CD_TIPO_CARGO = 'F'
                                        AND (E.NOME LIKE '%$pesquisa%' OR E.SOBRENOME LIKE '%$pesquisa%')";
                $registros = $conn->query($sql_code_fornecedor)->num_rows;
                $total_paginas = ceil($registros/$limite);
                $sql_code_fornecedor .= " LIMIT $inicio, $limite";
                $sql_query_fornecedor = $conn->query($sql_code_fornecedor) or die ("ERRO ao consultar" . $conn->error);
                
                if($sql_query_fornecedor->num_rows == 0){ ?>
                    <tr class="linhaCorpo">
                            <td class="linhaCorpo">Nenhum resultado encontrado...</td>
                        </tr>
                <?php }
                    else{
                        while ($dados_fornecedor = $sql_query_fornecedor->fetch_assoc()){ ?>
                            <tr class="linhaCorpo">
                            <td class="colunaCorpoTipo"><?php echo $dados_fornecedor['TIPO']; ?></td>
                            <td class="colunaCorpoNomeEmpresa"><?php echo $dados_fornecedor['NOME']." ".$dados_fornecedor['SOBRENOME']; ?></td>
                            <td class="colunaCorpoMunicipio"><?php echo $dados_fornecedor['MUNICIPIO']; ?></td>
                            <td class="colunaCorpoBairro"><?php echo $dados_fornecedor['BAIRRO']; ?></td>
                            <td class="colunaCorpoTelefone"><?php echo $dados_fornecedor['TELEFONE']; ?></td>
                        </tr>
                        <?php }
                    }
                }

                    if($_GET['search_tipo'] == 'M') { ?>
                        <section name="boxListaAgenda" id="" class="boxListaAgenda">
                        <table class="tabelaAgendaExternosMedicos">
                        <tr class="linhaHeader">
                            <th class="colunaHeaderTipo">TIPO</th>
                            <th class="colunaHeaderNome">NOME</th>
                            <th class="colunaHeaderEspecialidade">ESPECIALIDADE</th>
                            <th class="colunaHeaderTelefone">TELEFONE</th>
                        </tr>
                    <?php 
                    
                    $sql_code_medico = "SELECT
                                            UPPER(E.NOME) AS NOME,
                                            UPPER(E.SOBRENOME) AS SOBRENOME,
                                            UPPER(E.CARGO_ESPECIALIDADE) AS ESPECIALIDADE,
                                            UPPER(E.TELEFONE) AS TELEFONE,
                                            UPPER(TP.TIPO_CARGO) AS TIPO
                                        FROM EXTERNO E
                                            JOIN TIPO_CARGO TP
                                            ON TP.CD_TIPO_CARGO = E.CD_TIPO_CARGO
                                        WHERE E.CD_TIPO_CARGO = 'M'
                                        AND (E.NOME LIKE '%$pesquisa%' OR E.SOBRENOME LIKE '%$pesquisa%')";
                    $registros = $conn->query($sql_code_medico)->num_rows;
                    $total_paginas = ceil($registros/$limite);
                    $sql_code_medico .= " LIMIT $inicio, $limite";
                    $sql_query_medico = $conn->query($sql_code_medico) or die ("ERRO ao consultar! " . $conn->error);
                    
                    if($sql_query_medico->num_rows == 0){ ?>
                        <tr class="linhaCorpo">
                            <td class="linhaCorpo">Nenhum resultado encontrado...</td>
                        </tr>
                    <?php }
                        else{
                            while($dados_medico = $sql_query_medico->fetch_assoc()){ ?>
                                <tr class="linhaCorpo">
                                    <td class="colunaCorpoTipo"><?php echo $dados_medico['TIPO']; ?></td>
                                    <td class="colunaCorpoNome"><?php echo $dados_medico['NOME']." ".$dados_medico['SOBRENOME']; ?></td>
                                    <td class="colunaCorpoEpecialidade"><?php echo $dados_medico['ESPECIALIDADE']; ?></td>
                                    <td class="colunaCorpoTelefone"><?php echo $dados_medico['TELEFONE']; ?></td>
                                </tr>
                            <?php }
                        }
                    }
        }

    ?>

    </table>
        
    </section>
<!-- -----===Paginas Agenda===----- -->
    <section name="boxPaginasAgenda" id="" class="boxPaginasAgenda">
        <?php
            if(!empty($_GET['pagina']) || isset($_GET['pagina'])){

            if ($pagina > 1) { ?>
            <a href="<?php echo 'agendaTel_Ext.php?search_pesquisa='.$pesquisa.'&search_tipo='.$tipo_pesquisa.'&pagina='.$pagina - 1 ?>" class="paginasAgenda">
            <
            </a>
        <?php } 
            
        for ($i = 1; $i<=$total_paginas; $i++) { 
            if ($pagina == $i){
                $estilo = "class=\"paginasAgendaAtual\"";
            }
                else {
                    $estilo = "class=\"paginasAgenda\"";
                }
        ?>
            <a href="<?php echo 'agendaTel_Ext.php?search_pesquisa='.$pesquisa.'&search_tipo='.$tipo_pesquisa.'&pagina='. $i; ?>" name="pg" <?php echo $estilo; ?> > <?php echo $i; ?> </a>
            <?php }

            if($pagina < $total_paginas){ ?>
            <a href="<?php echo 'agendaTel_Ext.php?search_pesquisa='.$pesquisa.'&search_tipo='.$tipo_pesquisa.'&pagina='.$pagina + 1 ?>"  class="paginasAgenda">
            >
            </a>
            <?php } } ?>
    </section>
</div>

<!--FOOTER-->
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
<script src="main.js"></script>
</body>
</html>

<!-- name="" id="" class="" -->