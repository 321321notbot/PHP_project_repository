<!DOCTYPE html>
            <html>

                <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
                <link rel="stylesheet" href="assets/css/main.css" />
                <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
                <meta name="viewport" content="width=device-width">

            <title>Login</title>

            </head>

                <body>
                <header id="header">
						<h1><a href="index.php">Название</a></h1>
						<nav id="nav">
						<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Меню</span></a>
									<div id="menu">
										<ul>
											<li><a href="index.php">Главная</a></li>
											<li><a href="igropraktic.php">Руководители</a></li>
											<li><a href="adminnews.php">Новости</a></li> <br>
											<?php 
											if (empty($_SESSION['username']))
												{
													echo '<li><a href="registr.php">Регистрация</a></li><br>';
													echo '<form action="testik.php" method="post">													
													<p>
													   <label>Ваш логин:<br></label>
													   <input name="username" type="text" size="15" maxlength="15">
													   </p>																																								 
													   <p>												
													   <label>Ваш пароль:<br></label>
													   <input name="password" type="password" size="15" maxlength="15">
													   </p>
													   <p>
													   <input type="submit" name="submit" value="Войти"></form>';
												}
											else
												{
													$usname=$_SESSION["username"];
													echo "ваш логин:   "; 													
													echo $usname;					
													echo '<li><a href="kabiner.php">личный кабинет</a></li><br>';																											
													echo '<form action="exitses.php" method="post">
													<input type="submit" name="send" value="выход" />
												</form>';
													
												}
												?>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
                    <html>
                    <section class="wrapper style5">
							<div class="inner">
                            <div class="form-center fancy-form">
                            <div class="container">
                            <div class="wrapper">
                                <div class="form-center fancy-form">
                                    <h2 class="naming">Регистрация</h2>
                                    <form action="save_user.php" method="post">
    <!--**** save_user.php - это адрес обработчика.  То есть, после нажатия на кнопку "Зарегистрироваться", данные из полей  отправятся на страничку save_user.php методом "post" ***** -->
                                    <p>
                                        <label>Ваш логин:<br></label>
                                        <input style="width: 50" name="username" type="text" size="15" maxlength="15">
                                        </p>
                                    <!--**** В текстовое поле (name="login" type="text") пользователь вводит свой логин ***** -->
                                    <p>
                                        <label>Ваш пароль:<br></label>
                                        <input name="password" type="password" size="15" maxlength="15">
                                        </p>
                                    <!--**** В поле для паролей (name="password" type="password") пользователь вводит свой пароль ***** --> 
                                    <p>
                                        <input type="submit" name="submit" value="Добавить">
<!--**** Кнопочка (type="submit") отправляет данные на страничку save_user.php ***** --> 
                                    </p></form>
                                </div>
                            </div>
                        </div>

							</div>
						</section>

        </div>

        </div>

        </div>
            <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
        </body>

        </html>