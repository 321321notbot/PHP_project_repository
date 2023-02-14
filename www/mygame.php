<?php
session_start();
include "connect.php"
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Responsive 'Flat Profile' HTML Portfolio Template</title>
	<link href="css/demo.css" rel="stylesheet" type="text/css">
	 <link rel="stylesheet" href="css/jqbar.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">

	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,600' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/simpletextrotator.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main1.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
                .fagobob {                    
					background-color: #1d242a;
					color: #1b7e5a;	
                }
                table {
                    width: 50%; /* Ширина таблицы в процентах */
                }
                .col1 {
                    width: 100px; /* Ширина ячейки */
                }
                </style>
    
</head>
<body>
<header id="header">
						<h1><a href="index.html">Название</a></h1>
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
	<div class="container topbottom">
		<div class="row-fluid">

			<div class="span5">
				<img src="img/avatar.jpg" alt="Profile Avatar" class="avatar">

				<div class="navigation">
					<div>
						<ul>
						<li>
								<img src="img/about-icon.png">
								<a href="kabiner.php">Обо мне</a>
							</li>
							<li>
								<img src="img/portfolio-icon.png">
								<a href="changePers.php">Изменить данные</a>
							</li>
							<li>
								<img src="img/followme-icon.png">
								<a href="mygame.php">Мои игры</a>
							</li>
							<li>
								<img src="img/contact-icon.png">
								<a href="messageus.php">Сообщения</a>
							</li>
						</ul>
					</div>
				</div> 			
			</div>

        <div class="span7 homeabout">
				<div class="person">
					<span class="name">Личный кабинет <?php echo"игрока";?></span>
               
					<div class="font16"> <p style="color:#000000;">Ваши игры</p></div> 
                    </div>
                    <section>
						<section>
							<div>
                            <div>
                            <div class="container">
                            <div>
                                <div p style="color:#000000;">
                                    <?php 
                                    $result10 = "SELECT `idGamer`,`login`	FROM игрок WHERE `login` = '$usname'"; 
                                    $result11 = mysqli_query($conn, $result10) or trigger_error(mysql_error()." in ". $result10); //извлекаем из базы все данные о пользователе с введенным логином
                                    $myrow34 = mysqli_fetch_array($result11);
                                    $idgeymer=$myrow34['idGamer'];
                                    
                                                

                                    $query23 = " SELECT `День недели` , `Время` , `Дата`, `Название`
									FROM (
									`расписание`
									INNER JOIN `svyaz_rasp_igrok_prepod` ON расписание.KodRasp = svyaz_rasp_igrok_prepod.KodRasp
									)
									WHERE svyaz_rasp_igrok_prepod.idIgroka = '$idgeymer'";
                                    $result1077 = $conn->query($query23);
									echo '<table style=color:#000000; width="50 px" border=1>
									<thead>
										<tr>
											<td class="col1">День недели:</td>
											<td class="col1">Время:</td>
											<td class="col1">Дата:</td>
											<td class="col1">Игра:</td>
										</tr>
									</thead>
									<tbody>';
				 
										while ($row15 = mysqli_fetch_array($result1077)):
									?>
										<tr>
											<td class="col1">
												<?php echo $row15["День недели"]; ?>
											</td>
											<td class="col1">
												<?php echo $row15["Время"]; ?>
											</td>
											<td class="col1" >
												<?php echo $row15["Дата"]; ?>
											</td>
											<td class="col1" >
												<?php echo $row15["Название"]; ?>
											</td>
											
										</tr>
									<?php endwhile; ?>
									</tbody>
                                </table>        
                                   
            


                                </div>
                            </div>
                        </div>

							</div>
						</section>
				</div>
                



			
				</div>			
				
			</div>	

		</div>
	</div>
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../wp-content/themes/piha/js/top-bar.js" ></script>
    <script type="text/javascript" src="../wp-content/themes/piha/js/bsa-ads.js" ></script>
	<script src="js/jqbar.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	 $(document).ready(function () {			
		
            $('#bar-1').jqbar({ label: 'HTML5', value: 80, barColor: '#21ba82' });

            $('#bar-2').jqbar({ label: 'CSS', value: 99, barColor: '#21ba82' });

            $('#bar-3').jqbar({ label: 'JavaScript', value: 85, barColor: '#21ba82' });

            $('#bar-4').jqbar({ label: 'WordPress', value: 75, barColor: '#21ba82' });

          
			
			$('#bars-content .content').css({'opacity':'0',display:'none'});
			$('#bars-content .content:eq(0)').css('display','block').animate({opacity:1},1000);
			$('.jqbar:first').addClass('active');
			$('.jqbar').hover(function(){ $(this).addClass('hover');},function(){ $(this).removeClass('hover');});
			$('.jqbar').click(function(){
				$('.jqbar').removeClass('active');
				var id = $(this).addClass('active').attr('id').replace('bar','content');				
				$('#bars-content .content').css({'opacity':'0',display:'none'});
				$('#' + id).css('display','block').animate({opacity:1},1000);
				
			});		
			
			/* $(".rotate").textrotator({
				animation: "spin",
				separator: ",",
				speed: 2000
			  });
			*/
			
        });
		
    </script>
    <script type="text/javascript" src="js/jquery.simple-text-rotator.min.js"></script>
  <!--Dynamically creates analytics markup-->

  <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
		
</body>
</html>	