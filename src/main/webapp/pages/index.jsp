<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Mattrick-X</title>

    <!-- Css Files -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/themetypo.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <link href="css/widget.css" rel="stylesheet">
    <link href="css/color.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
	<link href="css/jquery.bxslider.css" rel="stylesheet">    
	<link href="css/prettyphoto.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    
    <!--// Wrapper //-->
    <div class="kode-wrapper">
      <header id="mainheader" class="kode-header-absolute">

        <!--// TopBaar //-->
          <div class="kode-topbar">
		  <div class="container">
              <div class="row">
                <div class="col-md-6 kode_bg_white">
					<!-- <ul class="top_slider_bxslider">
						<li><span class="kode-barinfo"><strong>Latest News : </strong> Lorem ipsum dolor sit amet, cons ecte tuer adipiscing elit,</span></li>
						<li><span class="kode-barinfo"><strong>Latest News : </strong> Lorem ipsum dolor sit amet, cons ecte tuer adipiscing elit,</span></li>
						<li><span class="kode-barinfo"><strong>Latest News : </strong> Welcome visitor you can Login or Create an Account</span></li>
					</ul> -->
				</div>
                <div class="col-md-6">
                  	<ul class="kode-userinfo">
                  		<sec:authorize access="hasRole('ROLE_USER')">
		                	<c:url value="/j_spring_security_logout" var="logoutUrl" />
							<form action="${logoutUrl}" method="post" id="logoutForm">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>
							
		                  	<c:if test="${pageContext.request.userPrincipal.name != null}">
								<span>Usuário: ${pageContext.request.userPrincipal.name}&nbsp;&nbsp;</span> 
							</c:if>
						</sec:authorize>
	                   	<!--  <li><a href="#"><i class="fa fa-shopping-cart"></i> Cart</a></li> -->
	                    <li><a href="#"><i class="fa fa-user"></i> Minha Conta</a></li>
	                    <li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-sign-in"></i> Entrar</a></li>
	                    <li><a href="#" data-toggle="modal" data-target="#myModalTwo"><i class="fa fa-user-plus"></i> Cadastre-se</a></li>
	                    <c:if test="${pageContext.request.userPrincipal.name != null}">
							<li> <a href="javascript:formSubmit()"><i class="fa fa-sign-out"></i> Sair</a></li>
						</c:if>
                  	</ul>
                </div>
              </div>
            </div>
          </div>
        <!--// TopBaar //-->
		
		<div class="header-8">
			<div class="container">
				<!--NAVIGATION START-->
				<div class="kode-navigation pull-left">
					<ul>
						 <li><a href="index.jsp">Início</a>
						  <ul class="children">
                              <li><a href="index.jsp">Voltar pro início</a></li>
                            </ul>
						 </li>
						 <sec:authorize access="hasRole('ROLE_ADMIN')">
							 <li><a href="index.jsp">Essa opção só aparece pro admin</a>
							  <ul class="children">
	                              <li><a href="index.jsp">Voltar pro início</a></li>
	                            </ul>
							 </li>
						</sec:authorize>	
					</ul>
					
				</div>
				<!--NAVIGATION END--> 
				<!--LOGO START-->	
				<div class="logo">
					<a href="index.jsp" class="logo"><img src="images/logo.png" alt=""></a>
				</div>
				<!--LOGO END-->	
				<!--NAVIGATION START-->
				<div class="kode-navigation">
					
				</div>
				<!--NAVIGATION END-->  
				
			</div>
		</div>
      </header>

      <!--// Main Banner //-->
      <div id="mainbanner">
        <div class="flexslider">
          <ul class="slides">
            <li>
              <img src="extra-images/slide1.jpg" alt="" />
              <div class="container">
                <div class="kode-caption">       
                	<h2>Mattrick-X</h2>
                    <div class="clearfix">
                  		<p>Administre seu Campeonato!<br>Crie Sua Liga!<br>Jogue!</p>
                  	</div>
                  <div class="clearfix"></div>
                  <!-- <a class="kode-modren-btn thbg-colortwo" href="#">FIFA</a> -->
                </div>
              </div>
            </li>
           <!--  <li>
              <img src="extra-images/slide2.jpg" alt="" />
              <div class="container">
                <div class="kode-caption">       
                	<h2>Fully Responsive Theme</h2> 
                    <div class="clearfix"></div>          
                  <p>Sed ut perspiciatis unde omnis iste natus <br>error sit accusantium dolore</p>
                  <div class="clearfix"></div>
                  <a class="kode-modren-btn thbg-colortwo" href="#">Read More</a>
                </div>
              </div>
            </li>
            <li>
              <img src="extra-images/slide3.jpg" alt="" />
              <div class="container">
                <div class="kode-caption">       
                	<h2>Retina Ready</h2>
                    <div class="clearfix"></div>        
                  <p>Sed ut perspiciatis unde omnis iste natuserror sit accusantium dolore</p>
                  <div class="clearfix"></div>
                  <a class="kode-modren-btn thbg-colortwo" href="#">Read More</a>
                </div>
              </div>
            </li> -->
          </ul>
        </div>
      </div>
      <!--// Main Banner //-->

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header thbg-color">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Acesse Sua Conta</h4>
          </div>
          <div class="modal-body">
          
          	<c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
          
            <form class="kode-loginform"
		            name='loginForm'
					action="<c:url value='/auth/login_check?targetUrl=${targetUrl}' />"
					method='POST'>

				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />			 
			 
              <p><span>Login</span> <input type="text" name='username' placeholder="Usuário"></p>
              <p><span>Senha</span> <input type="password" name='password' placeholder="Senha"></p>
              
              <c:if test="${empty loginUpdate}">
	              <p><label><input name="remember-me" type="checkbox"><span>Mantenha-me logado</span></label></p>
	              <p class="kode-submit">
	              	<a href="#">Esqueceu sua senha?</a> 
	              	<input class="thbg-colortwo" name="submit" type="submit" value="Entrar">
	              </p> 					
			  </c:if>
              
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModalTwo" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header thbg-color">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Register</h4>
          </div>
          <div class="modal-body">
            <form class="kode-loginform">
              <p><span>Email</span> <input type="text" placeholder="Email"></p>
              <p><span>Password</span> <input type="password" placeholder="Password"></p>
              <p><span>Retype Password</span> <input type="password" placeholder="Retype Password"></p>
              <p><label><input type="checkbox"><span>Remember Me</span></label></p>
              <p class="kode-submit"><a href="#">Lost Your Password</a> <input class="thbg-colortwo" type="submit" value="Sign Up"></p>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- jQuery (necessary for JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.countdown.js"></script>  
    <script src="js/waypoints-min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-progressbar.js"></script>
	<script src="js/jquery.accordion.js"></script>
	<script src="js/jquery.circlechart.js"></script>
	<script src="js/jquery.prettyphoto.js"></script>
	<script src="js/kode_pp.js"></script>
    <script src="js/functions.js"></script>
	
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	
  </body>
</html>