<!DOCTYPE html>
<%@ page session="flase" %>
<% HttpSession session=request.getSession();
String name =(String)session.getAttribute("userId");
 %>
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

    <body class="responsive-img" background="img/front2.jpg">

    <!-- start of navbar -->

    <div class="navbar-fixed">
       <nav class="blue">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo lmargin">Clean India </a>
          <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down navrmargin"><td><h1>Welcome <%=name%></h1><a href = "logout" >Logout</a>
            <li><div class="chip"></div></li>
          </ul>
          <ul class="side-nav" id="mobile-demo">
            <li><a class="waves-effect waves-light btn b1">sign up</a></li>
          </ul>
        </div>
      </nav>
    </div>
  

    <!-- end of navbar -->

    <!-- start of form -->

    <div class="row">
      <form action="Submit" method="post" class="col s6 offset-s4">
        <div class="row">
          <div class="col s8 check">
            <div class="file-field input-field">
              <div class="btn">
                <span>File</span>
                <input type="file" multiple>
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="text" placeholder="Upload image related to service you want.">
              </div>
            </div>
          </div>
          <div class="col s12">
            <p>
              <input type="checkbox" id="test5" />
              <label for="test5">Clean-up Dustbin</label>
            </p>  
          </div>
        </div>
        <div class="input-field col s8">
          <select multiple>
            <option value="" disabled selected>Choose your option</option>
            <option value="1">Exposed garbage</option>
            <option value="2">Open drains and severs</option>
            <option value="3">Blocked drains</option>
            <option value="4">Dirty public toilet</option>
            <option value="5">Dead animals</option>
            <option value="6">Exposed food waste</option>
            <option value="7">Water stagnation</option>
            <option value="8">Unclean water tanks</option>
            <option value="6">Unclean water supply in public place</option>
            <option value="7">Unlawful garbage dumps in public lots</option>
            <option value="8">Unattended open manholes</option>
            <option value="9">water logging area</option>
          </select>
          <label>Select your complain related to:</label>
          <button class="btn waves-effect waves-light z-depth-5 offset-s4" type="submit" name="action">Submit
            <i class="material-icons right">send</i>
          </button>
        </div>
      </form>
    </div>

    <!-- end of form -->


    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="http//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script type="text/javascript" src="js/external.js"></script>

    </body>
  </html>