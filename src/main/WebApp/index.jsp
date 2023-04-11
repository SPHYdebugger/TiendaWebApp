  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>

    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="padding: 5px; background-color: #EAD0D1; height: 80px; ">
        <a class="navbar-brand" href="#">
          <img src="resources/logo.png" alt="" style="width: 120px; height: 80px; margin: -8%;">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto" >
            <li class="nav-item active">
              <a class="nav-link" href="index.html" style="color: black;">INICIO <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: black;">EVENTOS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: black;">CONTACTO</a>
            </li>
          </ul>
          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Buscar un producto" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">BUSCAR</button>
          </form>
        </div>
      </nav>
    </header>

    <main role="main" >

      <div id="myCarousel" class="carousel slide" data-ride="carousel" >
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" style="padding-top: 80px;" >
          <div class="carousel-item active">
            <img class="first-slide" src="resources/ritual-spa-masaje-relajante-estetica-rosi.jpg" alt="First slide" style="width: 100%; max-height: 500px;">
            <div class="container">
              <div class="carousel-caption text-right" >
                <h1 style="color: black;">Masajes relajantes</h1>
                <b style="color: black;">Este mes en nuestro centro tenemos descuento en masajes. VEN, NO TE LOS PUEDES PERDER</b>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">+ INFO</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="resources/INR-Tractaments-Inj-54-1024x682.jpg" alt="Second slide" style="width: 100%; max-height: 500px;">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1 style="color: black;">Somos un centro de estética también para hombres</h1>
                <b style="color: black;">Tenemos muchos tratamientos adapatados también para vosotros. NO LO DUDES Y CUÍDATE</b>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">+ INFO</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="resources/presume-de-figura-con-nuestros-tratamientos-de-estetica-corporal_mini.jpg" alt="Third slide" style="width: 100%; max-height: 500px;">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1 style="color: black;">Tenemos nutricionistas propios</h1>
                <b style="color: black;">Si lo que quieres es perder esos kilos que te sobran, ven a nuestro centro. THE SUMMER IS COMMING</b>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">+ INFO</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev" >
          <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
          <span class="sr-only" >Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>


      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row" style="text-align: center; margin-top: 30px; margin-bottom: 30px;">
          <div class="col-lg-4">
            <img class="rounded-circle" src="resources/cliente.png" alt="Generic placeholder image" width="140" height="140">
            <h2>CLIENTES</h2>
            <p>Entra si lo que quieres es registrar un cliente nuevo, editar o borrar uno existente, listarlos a todos o buscar uno</p>
            <p><a class="btn btn-secondary" href="clients.jsp" role="button">ENTRAR &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="resources/productos.png" alt="Generic placeholder image" width="140" height="140">
            <h2>PRODUCTOS</h2>
            <p>Entra si lo que quieres es registrar un producto nuevo, editar o borrar uno existente, listarlos a todos o buscar uno</p>
            <p><a class="btn btn-secondary" href="products.jsp" role="button">ENTRAR &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="resources/compras.png" alt="Generic placeholder image" width="140" height="140">
            <h2>COMPRAS</h2>
            <p>Entra si lo que quieres es registrar una compra nueva, editar o borrar una existente, listarlas a todas o buscar una</p>
            <p><a class="btn btn-secondary" href="#" role="button">ENTRAR &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->


        <div class="row featurette" style="margin-top: 30px; margin-bottom: 30px;">
          <hr class="featurette-divider">
          <hr class="featurette-divider">
          <h2 style="text-align: center;">PRÓXIMOS EVENTOS</h2>
          <hr class="featurette-divider">
          <div class="col-md-7">
            <h2 class="featurette-heading">EVENTO MAQUILLAJE FIESTA <span class="text-muted"></span></h2>
            <p class="lead">Evento para aprender a sacarte el mejor partido. Te enseñaremos los mejores trucos de maquillaje y los mejores productos para cada tipo de cara y piel</p>
            <p class="lead">DÍA: 15/04/2023</p>
            <p class="lead">HORA: 12:00</p>
            <p class="lead">LUGAR: Nuestro centro de Madrid</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="resources/evento maquillaje.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">EVENTO CUIDADO DE CARA PARA HOMRES<span class="text-muted">.</span></h2>
            <p class="lead">Aprende a cuidar la piel de la cara como se merece. Para disimular los rasgos de la edad y sacarte unos añitos de encima</p>
            <p class="lead">DÍA: 24/04/2023</p>
            <p class="lead">HORA: 12:00</p>
            <p class="lead">LUGAR: Nuestro centro de Zaragoza</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="resources/evento hombres.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">EVENTO AMWC JAPAN<span class="text-muted"></span></h2>
            <p class="lead">Nuestros amigos de AMWC nos traerán los mejores productos ANTI-AGE, para reparar las marcas de la edad y volver a lucir una piel joven</p>
            <p class="lead">DÍA: 02/05/2023</p>
            <p class="lead">HORA: 12:00</p>
            <p class="lead">LUGAR: Nuestro centro de Vigo</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="resources/evento antiedad.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->


      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>