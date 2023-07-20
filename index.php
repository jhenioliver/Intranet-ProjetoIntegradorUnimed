<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link rel="shortcut icon" href="img/favicon_unimed.png" type="image/x-icon">
    <title>login</title>
</head>
<body>
    <div class="container">
        <div class="centerpage">
            <div class="page">
                <form action="login.php" class="formLogin" method="POST">
                    <h1>Login</h1>
                    <label for="text">Usuário</label>
                    <input id="usuario" name="usuario" type="text" placeholder="Digite seu Usuário" autofocus="true" />
                    <label for="password">Senha</label>
                    <div class="divPass">
                        <input type="password" id="senha" name="senha" placeholder="Digite sua Senha"> 
                        <img class="olho" src="img/eye-on.png" alt="">
                    </div>
                    <input type="submit" value="ENTRAR" class="btn">
                </form>
                <img class="imghp" src="img/hospital.jpg" alt="imagem do hospital">
            </div>
        </div>
    </div>
    <script src="login.js"></script>
</body>
</html>