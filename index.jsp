<!DOCTYPE html>
  <html>
    <head>
      <title>Clean India</title>
      <link rel="shortcut icon" href="image/s.ico" class="circle">
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" href="css/external.css" rel="stylesheet">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body background="img/clean.jpg">

    <!-- start of navbar -->

    <div class="navbar-fixed">
       <nav class="blue">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo lmargin"><marquee>Clean India</marquee></a>
          <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
          <ul class="right hide-on-med-and-down navrmargin">
            <li><a href ="register.jsp" class="waves-effect waves-light btn b1">sign up</a></li>
          </ul>
          <ul class="side-nav" id="mobile-demo">
            <li><a href ="register.jsp" class="waves-effect waves-light btn b1">sign up</a></li>
          </ul>
        </div>
      </nav>
    </div>

    <!-- start of navbar -->

    <!-- Start of slider -->

    <div id="wrapper" class="row">
      <div class="s12">
  <!--        <div class="center-align" style="height:582px"  >-->
          <div class="row">
            <form method = "post" action ="login" class="col s6 m4 offset-s6 offset-m8">
              <div class="row">
                <div class="input-field col s12">
                  <input id="userId" type="text" name="userId" >
                  <label for="userId">username</label>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12">
                  <input id="pass" type="password" name="pass">
                  <label for="pass">Password</label>
                </div>
              </div>
			    <div class="row">
                <div class="col s6">
                  <input name="group1" type="radio" id="test1" />
                  <label for="test1">Manager</label>
                </div>
                <div class="col s6">
                  <input name="group1" type="radio" id="test2" />
                  <label for="test2">User</label>
                </div>
              </div>
              <button class="btn waves-effect waves-light z-depth-5" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
              </button>
            </form>
          </div>
        </div>
      </div>

    <!-- end of slider -->


      <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="http//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script type="text/javascript" src="js/external.js"></script>

    </body>
  </html>