<!DOCTYPE html>
  <html>
    <head>
      <title>Clean India</title>
      <link rel="shortcut icon" href="img/ci.ico" class="circle">
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <link type="text/css" href="css/external.css" rel="stylesheet">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body background="img/front3.jpg">

    <!-- start of navbar -->

    <div class="navbar-fixed">
       <nav class="blue">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo center">Clean India</a>
          
        </div>
      </nav>
    </div>

    <!-- start of navbar -->

    <!-- Start of slider -->

    <div id="wrapper" class="row">
      <div class="s12">
          <div class="row">
            <form method = "post" action ="register" class="col s8 m4 offset-s2 offset-m4">
              <div class="row">
                <div class="input-field col s12">
                  <br><br>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="userId" type="text" name="userId" >
                  <label for="userId">Username</label>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s6">
                  <i class="material-icons prefix">lock_outline</i>
                  <input id="pass" type="password" name="pass">
                  <label for="pass">Password</label>
                </div>
                <div class="input-field col s6">
                  <i class="material-icons prefix">lock_outline</i>
                  <input id="repass" type="password" name="repass">
                  <label for="repass">Re Enter Password</label>
                </div>
              </div>
			  
			   <div class="row">
                <div class="input-field col s12">
                  <i class="material-icons prefix">location_on</i>
                  <input id="address" type="text" name="address" >
                  <label for="address">Address</label>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12">
                  <i class="material-icons prefix">stay_primary_portrait</i>
                  <input id="mobile" type="number" name="mobile">
                  <label for="mobile">Mobile</label>
                </div>
              </div>
			    <div class="row">
                <div class="col s6">
                  <input name="usertype" type="radio" id="test1" />
                  <label for="test1">Manager</label>
                </div>
                <div class="col s6">
                  <input name="usertype" type="radio" id="test2" />
                  <label for="test2">User</label>
                </div>
              </div>
              <button class="btn waves-effect waves-light z-depth-5" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
              </button>
			  <a href = "index.jsp" class="waves-effect waves-light">Already Register? Login Now</a>
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