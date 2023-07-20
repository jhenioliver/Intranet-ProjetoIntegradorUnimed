<?php
    session_start();
    if(empty($_SESSION)){
        print "<script>location.href='index.php';</script>";
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon_unimed.png" type="image/x-icon">
    <title>Intranet Unimed Chapecó</title>
    <link rel="stylesheet" href="intranet_styles.css">
</head>

<body>

<!--HEADER-->
    <header>
        <div class="header">
            <a href="https://www.unimed.coop.br/site/web/chapeco"><img draggable="false" name="" id="" class="headerImgLogo" src="img/logo_unimed.png" alt=""></a>

        
            <section class="form">
                <input type="text" name="barraDePesquisa" id="search-input" class="headerBarraDePesquisa" accesskey="p" placeholder="Faça a sua Pesquisa..." type="search">
                <button class="searchbtn" onclick="searchText()">Pesquisar</button>
            </section>

            <section name="boxvpn" id="" class="boxvpn">
                <div name="boxVpnColaboradores" id="" class="boxVpnColaboradores">
                    <a href="">
                        VPN Colaboradores
                    </a>
                </div>
                <div name="boxVpnManual" id="" class="boxVpnManual">
                    <a href="">
                        Manual de Instalação
                    </a>
                </div>

            </section>


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

<!-----CONTEUDO----->
<div name="conteudo" id="conteudo" class="conteudo">

    <section name="sistema/container2" id="" class="sistema_container2">
            
<!--sistemas-->
            <section name="sistemas" class="boxSistemas">

                

                <div name="admAppCoop" id="" class="blocossis"><a href="http://www.unimedchapeco.com.br/appcoop" title="Adm App Coop." target="_new">Adm App Coop.</a></div>

                <div name="asten_AssinaturaEletrônica" id="" class="blocossis"><a href="https://plataforma.astenassinatura.com.br/login/UNIMEDCH" title="Asten - Assinatura Eletrônica" target="_new">Asten - Assinatura Eletrônica</a></div>
                
                <div name="blipPortal" id="" class="blocossis"><a href="https://unimedchapeco.blip.ai/application" title="BLIP Portal" target="_new">BLIP Portal</a></div>
                
                <div name="bi_Tableau" id="" class="blocossis"><a href="https://us-east-1.online.tableau.com/#/site/glauberdebortoli/" title="BI - Tableau" target="_new">BI - Tableau</a></div>
                
                <div name="blipMensagensAtivas" id="" class="blocossis"><a href="https://unimedchapeco.blip.ai/application/detail/roteador176/growth/activemessages/sendactivemessage" title="BLIP Mensagens Ativas" target="_new">BLIP Mensagens Ativas</a></div>
                
                <div name="cadastroDeVeículos" id="" class="blocossis"><a href="http://www.unimedchapeco.coop.br/rubiweb" title="Cadastro de Veículos" target="_new">Cadastro de Veículos</a></div>
                
                <div name="contingenciaSgu" id="" class="blocossis"><a href="http://192.168.2.240:8068/" title="Contingência SGU" target="_new">Contingência SGU</a></div>
                
                <div name="fabricaDeIdeias" id="" class="blocossis"><a href="https://ideiaszlabs.aevoinnovate.net" title="Painel de Gestão Senior" target="_new">Fábrica de Ideias</a></div>
                
                <div name="gif" id="" class="blocossis"><a href="https://www.plataformagif.com.br/#" title="GIF" target="_new">GIF</a></div>
                
                <div name="giu" id="" class="blocossis"><a href="https://giu.unimed.coop.br" title="GIU" target="_new">GIU</a></div>
                
                <div name="lexicomp" id="" class="blocossis"><a href="https://online.lexi.com/lco/action/home" title="LEXICOMP" target="_new">LEXICOMP</a></div>
                
                <div name="sinan" id="" class="blocossis"><a href="https://www.unimedchapeco.com.br/sinan/" title="SINAN" target="_new">SINAN</a></div>
                
                <div name="sistemasEstrategicos" id="" class="blocossis"><a href="http://192.168.2.96/SE" title="Sistemas Estratégicos" target="_new">Sistemas Estratégicos</a></div>
                
                <div name="solicitaçoesMarmitas_Nutriçao"  id="" class="blocossis"><a href="https://docs.google.com/forms/d/e/1FAIpQLScCLDcElEuFh2Y1XrUoI2IeyV-EcLRDzWTDZSeNFnwWOYuNBA/viewform" title="Solicitações Marmitas - Nutrição" target="_new">Solicitações Marmitas - Nutrição</a></div>
                
                <div name="uptodate" id="" class="blocossis"><a href="https://www.uptodate.com/contents/search" title="Uptodate" target="_new">Uptodate</a></div>

            </section>

            <section class="container2">
<!--navegação-->
                <nav name="navegacao" id="" class="navegacao">
                    <ul class="nav-list">
                        <li id="nav"><a accesskey="a" href="#" onmouseover="showModal()" onmouseout="hideModal()"
                        >Acessibilidade</a>
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
                        <li id="nav" class="pgatual"><a accesskey="t" href="intranet.php" class="pg">Intranet</a></li>
                        <hr>
                        <li id="nav"><a href="agendaTel_Int.php">Agenda Telefônica</a></li>
                        <hr>
                        <li id="nav"><a href="siglario_Sig.php">Siglário</a></li>
                        <hr>
                        <li id="nav"><a href="documentos.php">Documentos</a></li>
                    </ul>
                </nav>
<!--banner-->
                <div name="banner" class="banner"><img draggable="false" src="img/banner_unimed.jpg" alt="banner unimed chapeco"></div>

<!--principais-->
                <main name="principaisSistemas" id="" class="principaisSistemas">

                    <a draggable="false" href="https://platform.senior.com.br/login/?redirectTo=https%3A%2F%2Fplatform.senior.com.br%2Fsenior-x%2F&tenant=unimedchapeco.coop.br">
                        <div draggable="false" name="boxPainelDeGestaoSenior" id="" class="boxPainelDeGestaoSenior">
                            <img draggable="false" src="img/logo_senior.png" alt="">
                            <p>Painel de Gestão Senior</p>
                        </div>
                    </a>

                    <a draggable="false" href="https://www.unimedchapeco.coop.br/sistema">
                        <div accesskey="c" draggable="false" name="boxSistemaDeGestao" id="" class="boxSistemaDeGestao">
                            <img draggable="false" src="img/sistema_gestao.png" alt="">
                            <p>Sistema de Gestão</p>
                        </div>
                    </a>

                    <a draggable="false" href="https://www.unimedchapeco.coop.br/intratarefas">
                        <div name="boxIntratarefas" id="" class="boxIntratarefas">
                            <img draggable="false" src="img/intratarefas_logo.png" alt="">
                            <p>Intratarefas</p>
                        </div>
                    </a>

                    <a draggable="false" href="https://webmail.unimedchapeco.coop.br/">
                        <div name="boxWebMail" id="" class="boxWebMail">
                            <img draggable="false" src="img/webmaillogo.png" alt="">
                            <p>Webmail</p>
                        </div>
                    </a>

                    <a draggable="false" draggable="false" href="https://unimedchapeco.blip.ai/application">
                        <div name="boxBlip" id="" class="boxBlip">
                            <img draggable="false" draggable="false" src="img/bliplogo.png" alt="">
                            <p>Blip</p>
                        </div>
                    </a>

                    <a draggable="false" href="https://unimedchapeco.coop.br/consumos-nutricao/">
                        <div name="boxNutrição" id="" class="boxNutricao">
                            <img draggable="false" src="img/nutricaologo.png" alt="">
                            <p>Nutrição</p>
                        </div>
                    </a>
                </main>

<!--data--> 
                <div name="data" class="data">
                    <p id="clock">
                        <?php
                            date_default_timezone_set('America/Sao_Paulo');
                            $date = date('d/m/Y');
                            $time = date('H:i:s');
                            print $date . '  ' . $time;
                        ?>
                    </p>
                </div>
        </section>
    </section>

<!--aniversario-->
    <div name="headerAniversario" id="" class="headerAniversario">
        <div name="iconHeaderAniversario_ADD" id="" class="iconHeaderAniversario_ADD">  
            <div name="iconHeaderAniversario" id="" class="iconHeaderAniversario">
                <img draggable="false" src="img/iconHeaderAniversario.png" alt="">
            </div>
            <p>ANIVERSARIANTES DO DIA</p>
        </div>
        
        <div name="listaCompleta" id="" class="listaCompleta">
            <a href="listacompleta.php">VER LISTA COMPLETA</a>
        </div>
    </div>

    <div name="boxAniversariantes" id="" class="boxAniversariantes">

        <section name="perfilAniversariante" id="" class="perfilAniversariante">
            <div name="boxFotoColaboradores" id="" class="boxFotoColaboradores">
                <img draggable="false" name="fotoColoborador" id="" class="noclass" src="img/perfil.png" alt="">
            </div>

            <div name="infoColaborador" id="" class="infoColaborador">
                <div name="infoNomeColaborador" id="" class="infoNomeColaborador"><p>nome</p></div>
                <div name="infoCargoColaborador" id="" class="infoCargoColaborador"><p>cargo</p></div>
                <div name="infoSetorColaborador" id="" class="infoSetorColaborador"><p>setor</p></div>
            </div>
        </section>

        <section name="perfilAniversariante" id="" class="perfilAniversariante">
            <div name="boxFotoColaboradores" id="" class="boxFotoColaboradores">
                <img draggable="false" name="fotoColoborador" id="" class="noclass" src="img/perfil.png" alt="">
            </div>

            <div name="infoColaborador" id="" class="infoColaborador">
                <div name="infoNomeColaborador" id="" class="infoNomeColaborador"><p>nome</p></div>
                <div name="infoCargoColaborador" id="" class="infoCargoColaborador"><p>cargo</p></div>
                <div name="infoSetorColaborador" id="" class="infoSetorColaborador"><p>setor</p></div>
            </div>
        </section>

        <section name="perfilAniversariante" id="" class="perfilAniversariante">
            <div name="boxFotoColaboradores" id="" class="boxFotoColaboradores">
                <img draggable="false" name="fotoColoborador" id="" class="noclass" src="img/perfil.png" alt="">
            </div>

            <div name="infoColaborador" id="" class="infoColaborador">
                <div name="infoNomeColaborador" id="" class="infoNomeColaborador"><p>nome</p></div>
                <div name="infoCargoColaborador" id="" class="infoCargoColaborador"><p>cargo</p></div>
                <div name="infoSetorColaborador" id="" class="infoSetorColaborador"><p>setor</p></div>
            </div>
        </section>

        <section name="perfilAniversariante" id="" class="perfilAniversariante">
            <div name="boxFotoColaboradores" id="" class="boxFotoColaboradores">
                <img draggable="false" name="fotoColoborador" id="" class="noclass" src="img/perfil.png" alt="">
            </div>

            <div name="infoColaborador" id="" class="infoColaborador">
                <div name="infoNomeColaborador" id="" class="infoNomeColaborador"><p>nome</p></div>
                <div name="infoCargoColaborador" id="" class="infoCargoColaborador"><p>cargo</p></div>
                <div name="infoSetorColaborador" id="" class="infoSetorColaborador"><p>setor</p></div>
            </div>
        </section>

        <section name="perfilAniversariante" id="" class="perfilAniversariante">
            <div name="boxFotoColaboradores" id="" class="boxFotoColaboradores">
                <img draggable="false" name="fotoColoborador" id="" class="noclass" src="img/perfil.png" alt="">
            </div>

            <div name="infoColaborador" id="" class="infoColaborador">
                <div name="infoNomeColaborador" id="" class="infoNomeColaborador"><p>nome</p></div>
                <div name="infoCargoColaborador" id="" class="infoCargoColaborador"><p>cargo</p></div>
                <div name="infoSetorColaborador" id="" class="infoSetorColaborador"><p>setor</p></div>
            </div>
        </section>

    </div>
</div>

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
aaaaaaaaaaa