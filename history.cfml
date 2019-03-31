<!--- Read the package list file --->
<cffile action="read" variable="request.jsonPackageList" file="#expandPath("./package-list.json")#">
<!--- Deserialize to CFML Struct --->
<cfset request.deserjsonPackageList = deserializeJSON(request.jsonPackageList)>
<!--- Reserialize for Escapes --->
<cfset request.serjsonPackageList = serializeJSON(request.deserjsonPackageList)>
                
<!DOCTYPE HTML>

<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
   <meta charset="UTF-8"/>
  <title>TBD</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="author" content="http://www.hl7.org"/>

  <link href="fhir.css" rel="stylesheet"/>

   <!-- Bootstrap core CSS -->
  <link href="dist/css/bootstrap.css" rel="stylesheet"/>
  <link href="assets/css/bootstrap-fhir.css" rel="stylesheet"/>

  <!-- Project extras -->
  <link href="assets/css/project.css" rel="stylesheet"/>
  <link href="assets/css/pygments-manni.css" rel="stylesheet"/>
	<link href="jquery-ui.css" rel="stylesheet"/>

  <!-- Favicons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png"/>
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png"/>
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png"/>
  <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png"/>
  <link rel="shortcut icon" href="assets/ico/favicon.png"/>
  <script type="application/javascript" src="history-cm.js"> </script>
  <script type="application/javascript" src="history.js"> </script>
  <link href="history.css" rel="stylesheet"/>

</head>
<body>

 <div id="segment-header" class="segment">  <!-- segment-header -->
  <div class="container">  <!-- container -->
   <a id="logo" no-external="true" href="http://hl7.org/fhir"><img alt="logo fhir" src="assets/images/fhir-logo-www.png"/></a>
<div>
<a id="hl7-logo" no-external="true" href="http://www.hl7.org">
     <img alt="visit the hl7 website" width="42" height="50" src="assets/images/hl7-logo.png"/>
    </a>
   </div>
   <div id="ig-status" style="font-size:24px;padding-top: 20px;">
<b id="ig-title">TBD</b>
</div>
 </div>
  <div class="container">  <!-- container -->
 </div></div>  <!-- /segment-header -->

 <div id="segment-navbar" class="segment">  <!-- segment-navbar -->
  <div id="stripe"> </div>
  <div class="container">  <!-- container -->
   <!-- HEADER CONTENT -->

   <nav class="navbar navbar-inverse">
    <div class="container">
     <button data-target=".navbar-inverse-collapse" class="navbar-toggle" data-toggle="collapse" type="button">
      <span class="icon-bar"> </span>
      <span class="icon-bar"> </span>
      <span class="icon-bar"> </span>
     </button>
     <a class="navbar-brand hidden" href="http://hl7.org/fhir/index.html">FHIR</a>
     <div class="nav-collapse collapse navbar-inverse-collapse">
      <ul class="nav navbar-nav">
              <li><a href="history.html">History</a></li>
            </ul>

     </div>  <!-- /.nav-collapse -->
    </div>  <!-- /.container -->
   </nav>  <!-- /.navbar -->

  <!-- /HEADER CONTENT -->
  </div>  <!-- /container -->
 </div>  <!-- /segment-navbar -->



  <!-- ============BreadCrumb=============== -->

  </div>  <!-- /container -->
 </div>  <!-- /segment-breadcrumb -->

 <div id="segment-content" class="segment">  <!-- segment-content -->
 <div class="container">  <!-- container -->
            <div class="row">
             <div class="inner-wrapper">


<div class="col-12">

<h2>Publication (Version) History</h2>

<div id="intro"></div>

  <!-- ============CONTENT CONTENT=============== -->

<div id="history-data"></div>
<style>
    #history-data table td { padding-right: 1em; }
</style>

  <!-- ==============END CONTENT END CONTENT=================== -->

<p></p>
 </div>

    </div>  <!-- /inner-wrapper -->
            </div>  <!-- /row -->
        </div>  <!-- /container -->

    </div>  <!-- /segment-content -->


    
</div>

    </div>  <!-- /inner-wrapper -->
            </div>  <!-- /row -->
        </div>  <!-- /container -->

    </div>  <!-- /segment-content -->


<div id="segment-footer" class="segment">  <!-- segment-footer -->
  <div class="container">  <!-- container -->
   <div class="inner-wrapper">
    <p>
      <span id="ig-footer">TBD </span> &reg;&copy; <a style="color: #81BEF7" href="http://hl7.org/fhir">FHIR</a> |
             <!--  <a style="color: #81BEF7" rel="license"  <href="../license.html"><img style="border-style: none;" alt="CC0" src="cc0.png"/></a> -->
                <a style="color: #81BEF7" rel="license" href="http://hl7.org/fhir/license.html"><img style="border-style: none;" alt="CC0" src="cc0.png"/></a>
        </p>
   </div>  <!-- /inner-wrapper -->
  </div>  <!-- /container -->
 </div>  <!-- /segment-footer -->
  <!-- disqus thread -->
  <!-- disqus -->
  <!-- end disqus -->

 <div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
  <div class="container">  <!-- container -->
  </div>  <!-- /container -->
 </div>  <!-- /segment-post-footer -->

 <!-- JS and analytics only. -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./assets/js/jquery.js"> </script>     <!-- note keep space here, otherwise it will be transformed to empty tag -> fails -->
<script src="./dist/js/bootstrap.min.js"> </script>
<script src="./assets/js/respond.min.js"> </script>

<script src="./assets/js/fhir.js"> </script>

<!-- Analytics Below
================================================== -->

<!--- Include in the page --->
<script>
var pageJSON = '<cfoutput>#request.serjsonPackageList#</cfoutput>';
load(pageJSON);
</script>

</body>
</html>

