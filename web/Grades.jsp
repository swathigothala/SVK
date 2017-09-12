<%-- 
    Document   : MyProfile
    Created on : Jun 27, 2017, 2:34:08 PM
    Author     : Swathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sai Venkata Krishna Ready Mix Industry</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <s:head/>
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <style type="text/css">
            
            label[for="i"] {
                font-family:sans-serif;
                font-style: normal;
                color: black;
                font-size: 10pt;
                padding-bottom: 10px;
                padding-left: 100px;
            } 
           
            </style>
            
            <style type="text/css">
    #s
    {
        width: 100px;
        height: 40px;
        margin-left: 150px;
    }
</style>
    </head>
   <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
   
        <s:iterator value="ulist" var="myobj"> 
            <%@include  file="upperpage1.jsp" %>
            
          <section class="content">      
    
    
        <center>
            <h1>
       Create Grade
      </h1>
        </center>
     
   
            
            
         

<!--      <div class="row"  >
        <div class="col-md-12" >-->
  <div class="box box-info">
  <div class="box-header with-border">
             
            
             <s:form action="insertgrade" method="post">
               
                 <table>
                     <tr><td><s:hidden name="lid" value="%{lid}" /></td>
              <td><br/></td>
      <div class="form-group has-feedback">
    <s:textfield id="i" name="grade.grade1" onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter Grade" size="90" label="Grade"/>
        
      </div>
        
            <td><br/></td>
          <s:submit id="s" value="Submit" cssClass="btn btn-primary btn-block btn-flat" align="center"/>
         <td><br/></td>
         
        </table>
    </s:form>

             

            
  </div></div>
            <!-- /.box-body -->
<!--          </div>
           /.box 

          
         
        </div>-->
                <br/><br/>
  
             </s:iterator> 
            
        
         
        <center>
            <h1>
       View Grade
      </h1>
        </center>
     
    
        
             <div class="box box-info">
               
            <div class="box-header with-border">
              <h3 class="box-title">Grades that Exists</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>S.No</th>
                    <th>Grade</th>
                 
                   </tr>
                  </thead>
                   <s:set var="total1" value="0" />
                  <s:iterator value="glist">
                          <tr>
                                <s:set var="total1" value="%{#total1+1}" />
                                <td><s:property  value="%{#total1}" /></td>
                              <td><s:property value="grade"/></td>
                          
                        <td><a href="deletegrade?gid=<s:property value='gid'/>&lid=<s:property value='lid'/>" onclick="return confirm('Are You Sure ?')" <span class="label label-danger">Delete</span></a></td>
                  </tr>
             
                  </s:iterator>
                
                </table>
              </div>
            </div>
                 
      </div>
           
          </section>
    </div>
        <%@include file="Footer.jsp" %>
        
       <!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>

    </body>
</html>
