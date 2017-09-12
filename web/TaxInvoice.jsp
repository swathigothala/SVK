<%-- 
    Document   : BillOfSupply
    Created on : Jun 28, 2017, 5:35:19 PM
    Author     : Masrat
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SVK READYMIX INDUSTRY</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
 <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <sj:head/>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/skin-yellow.min.css">

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
                padding-bottom: 0px;
                padding-left: 10px;
            } 
           
 </style>
            
 <style type="text/css">
    #s
    {
        width: 100px;
        height: 40px;
        margin-right:90px;
        margin-bottom: 80px;
      
    }
 </style>
 
    <script language="javascript">
        function checkInput1(ob1) {
             var invalidChars = /[^a-zA-Z\ \.]+/gi
             if(invalidChars.test(ob1.value)) {
            ob1.value = ob1.value.replace(invalidChars,"");
                                 }
                                  }
    </script>



      <script language="javascript">
        function checkInput2(ob2) {
             var invalidChars = /[^a-zA-Z0-9#\n\/\,\(\)\ \.\;\:\-]+/gi
             if(invalidChars.test(ob2.value)) {
            ob2.value = ob2.value.replace(invalidChars,"");
                     }
                    }
      </script>

<SCRIPT language=Javascript>
            function isDecimalKey(evt)
            {
                var theEvent = evt || window.event;
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
                if (key.length === 0)
                    return;
                var regex = /^[0-9a-zA-Z ]*$/;
                if (!regex.test(key)) {
                    theEvent.returnValue = false;
                    if (theEvent.preventDefault)
                        theEvent.preventDefault();
             }
            }

            function isNumberKey(el, evt)
            {
                var charCode = (evt.which) ? evt.which : event.keyCode;
                if (charCode !== 45 && charCode !== 8 && (charCode !== 46) && (charCode < 48 || charCode > 57))
                    return false;
                if (charCode === 46) {
                    if ((el.value) && (el.value.indexOf('.') >= 0))
                        return false;
                    else
                        return true;
                }
                return true;
                var charCode = (evt.which) ? evt.which : event.keyCode;
                var number = evt.value.split('.');
                if (charCode !== 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
                    return false;
                }
            }
            
             function isAlphaKey(evt)
                {
                    var theEvent = evt || window.event;
                    var key = theEvent.keyCode || theEvent.which;
                    key = String.fromCharCode(key);
                    if (key.length === 0)
                        return;
                    var regex = /^[a-zA-Z ]+$/;
                    if (!regex.test(key)) {
                        theEvent.returnValue = false;
                        if (theEvent.preventDefault)
                            theEvent.preventDefault();
                    }
                }   
                
                function isGstKey(evt)
                {
                    var theEvent = evt || window.event;
                    var key = theEvent.keyCode || theEvent.which;
                    key = String.fromCharCode(key);
                    if (key.length === 0)
                        return;
        //            var regex = /^37[A-Z]{3}[P|F|C|H|A|T|G|L]{1}[A-Z]{1}\\d{4}[A-Z]{1}[0-9A-Z]{1}Z[0-9A-Z]{1}$/;
      //    var regex = /^[a-zA-Z ]+$/;     
           var regex = /^[37A-Z{2} ]*$/;
        if (!regex.test(key)) {
                        theEvent.returnValue = false;
                        if (theEvent.preventDefault)
                            theEvent.preventDefault();
                    }
                }   
                
            
            
          function addRow(one1) {
   var table = document.getElementById(one1);

   var rowCount = table.rows.length;
   var row = table.insertRow(rowCount);
                      
   var colCount = table.rows[2].cells.length;
                      //   alert(colCount);
   for(var i=0; i<colCount; i++) {

    var newcell = row.insertCell(i);

    newcell.innerHTML  = table.rows[rowCount-1].cells[i].innerHTML ;
    //alert(newcell.childNodes[0].type);
    switch(newcell.childNodes[0].type) {
     case "text":
       newcell.childNodes[0].value = "";
       break;
     case "checkbox":
       newcell.childNodes[0].checked = false;
       break;
     case "select-one":
       newcell.childNodes[0].selectedIndex = 0;
       break;
       
    }
   }
  // alert(rowCount);
  // $(".table").find("tr:nth-child("+(rowCount+1)+")").find("td:nth-child("+(5)+")").text("");                
                        
  }
</SCRIPT>

<script>
    $(document).ready(function() {
  $("input[id^='chk-']").change(function() {
    if ($(this).is(":checked")) {
      var chkId = $(this).attr("id");
      var inpId = chkId.substring(chkId.indexOf("-") + 1);
      
      $(this).next("label").after($inp);
    } else {
      var chkId = $(this).attr("id");
      var inpId = chkId.substring(chkId.indexOf("-") + 1)
      $("#TextBox"+inpId).remove();
    }
  });
});
    </script>
    
    <script type="text/javascript">
            function FillBilling(f){
                if(f.billingtoo.checked === true){
                    var recName=$('.recName').val();
                     $('.conName').val(recName);
                }
                else{
                    $('.conName').val("");
                }
            }
        </script>
        
         <script type="text/javascript">
            function FillBilling1(f){
                if(f.billingtoo1.checked === true){
                    var recAd=$('.recAdd').val();
                     $('.conAdd').val(recAd);
                }else{
                    $('.conAdd').val("");
                }
            }
        </script>
        
        
         <script type="text/javascript">
            function FillBilling2(f){
                if(f.billingtoo2.checked === true){
                   var recst=$('.recSt').val();
                     $('.conSt').val(recst);
                }else{
                    $('.conSt').val("");
                }
            }
        </script>
        
        
         <script type="text/javascript">
            function FillBilling3(f){
                if(f.billingtoo3.checked === true){
                    var recd=$('.recS').val();
                     $('.conS').val(recd);
                }else{
                     $('.conS').val("");
                }
            }
        </script>
        
        
         <script type="text/javascript">
            function FillBilling4(f){
                if(f.billingtoo4.checked === true){
                    f.consigneeGstinNo.value=f.receiverGstinNo.value;
                }
            }
        </script>

<style>
#input{width:100px;} /* needed only to fit in the "Run code snippet" box */

.wwFormTable tr {
    display: inline-block;
    
}
label {
  display: inline-block;
  
  margin-left: -1px;
  text-align: right;
}​
</style> 
  <s:head/>

    <script>
            function validate1(){
              //  alert('IIIIIIIIIII');
              var invoice=document.getElementById("invoice").value;
          
                var trans=document.getElementById("trans").value;
                    var vehno=document.getElementById("vehno").value;
                   var charge=document.getElementById("charge").value;
                      var state=document.getElementById("state").value;
                      var code=document.getElementById("code").value;
                          var ac=document.getElementById("bankac").value;
                var ifsc=document.getElementById("bankifsc").value;
                 var tc=document.getElementById("tc").value;
                       var place=document.getElementById("place").value;
                        var rname=document.getElementById("rname").value;
                         var cname=document.getElementById("cname").value;
                          var raddr=document.getElementById("raddr").value;
                           var caddr=document.getElementById("caddr").value;
                            var rgst=document.getElementById("rgst").value;
                             var cgst=document.getElementById("cgst").value;
                              var rstate=document.getElementById("rstate").value;
                              var cstate=document.getElementById("cstate").value;
                              var bankname=document.getElementById("bankname").value;
                              var bankbr=document.getElementById("bankbr").value;
                               var exp=/^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$/;
                             var exp2=/^37([A-Z][A-Z][A-Z])(P|F|C|H|A|T|G|L)([A-Z][0-9][0-9][0-9][0-9][A-Z])([0-9A-Z])Z([0-9A-Z])$/;
          var regx=new RegExp(exp2); 
        var rgst=document.getElementById("rgst").value;
        
          var tm=trans.toUpperCase();
        document.getElementById("trans").value=tm;
      var vm=vehno.toUpperCase();
      document.getElementById("vehno").value=vm;
      var rc=place.toUpperCase();
     document.getElementById("place").value=rc;
     var rn=rname.toUpperCase();
     document.getElementById("rname").value=rn;
     var cn=cname.toUpperCase();
     document.getElementById("cname").value=cn;
      var radd=raddr.toUpperCase();
     document.getElementById("raddr").value=radd;
     var cadd=caddr.toUpperCase();
     document.getElementById("caddr").value=cadd;
     var bankn=bankname.toUpperCase();
     document.getElementById("bankname").value=bankn;
       var bankbranc=bankbr.toUpperCase();
     document.getElementById("bankbr").value=bankbranc;
        var account=ac.toUpperCase();
     document.getElementById("bankac").value=account;
        var ifs=ifsc.toUpperCase();
     document.getElementById("bankifsc").value=ifs;
     
     
           var abc=new Array;
        abc=<s:property value="invlist1"/>;
       
                               
                             for(var i=0;i<abc.length;i++) 
                          {
                              var a1="00"+parseInt(abc[i]);
                              var  b1="00"+parseInt(invoice);
                     //    alert(a1+'**************************'+b1)
                              if(a1===b1)
                              {
                                 alert("Data already exists with this Invoice Number");
                                 return false; 
                              }
                          }
           
    
             document.getElementById("inv1").value=invoice;               
        
        if(!(($("#rgst").val()).length === 0)){
         if(!(rgst.match(regx))) {
                                alert("Please enter valid Receiver GSTIN");
                                 return false; 
                            }
                        }
                var cgst=document.getElementById("cgst").value;     
                         if(($("#cgst").val()).length !== 0){
                             if(!(cgst.match(regx))) {
                                alert("Please enter valid Consignee GSTIN");
                                 return false; 
                            }
                        } 
                if(ac=="" || ac==null){
                    alert("Bank Account Number is must");
                    return false;
                } 
                
                 if(ifsc=="" || ifsc==null){
                    alert("IFSC Codeis must");
                    return false;
                }
              
                if(bankname=="" || bankname==null){
                    alert("Bank Name is must");
                    return false;
                }
                 if(bankbr=="" || bankbr==null){
                    alert("Bank Branch is must");
                    return false;
                }
                
                  if(invoice==="" || invoice===null){
                    alert("Invoice Number is Must");
                    return false;
                }
//                  if(invoice1==="" || invoice1===null){
//                    alert("Invoice Number is Must");
//                    return false;
//                }
                 if(trans=="" || trans==null){
                    alert("Transport Mode can't be empty!!!!");
                    return false;
                }
               if(vehno=="" || vehno==null){
                    alert("Vehicle Number can't be empty");
                  
                    return false;
                }
//                 if(!(vehno.match(exp))){
//                    alert("Please Enter Correct vehicle number");
//                    return false;
//                }
                 if(charge=="" || charge==null){
                    alert("Invoice charge can't be empty");
                    return false;
                }
                              
                 
                 if(place=="" || place==null){
                    alert("Supply of place can't be empty");
                    return false;
                }
                 if(rname=="" || rname==null){
                    alert("Receiver Name can't be empty");
                    return false;
                }
                
                 if(caddr=="" || caddr==null){
                 //    alert(caddr);
                    alert("Shipping Address can't be empty");
                    return false;
                }
                 if(cname=="" || cname==null){
                    alert("Consignee Name can't be empty");
                    return false;
                }
                 if(raddr=="" || raddr==null){
                 //    alert(raddr);
                    alert("Receiver Address can't be empty");
                    return false;
                }
              
          
           
              // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.qtyvals').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalqty').val(sum);

                
                

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.cgstval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totcgstamt').val(sum);

                

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.sgstval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totsgstamt').val(sum);

                

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.totval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totamt').val(sum);

                

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.aftertax').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalaftertax').val(sum);

                

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.beforetax').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalbeforetax').val(sum);


                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.taxables').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totaltaxables').val(sum);

                

                    // initialize the sum (total price) to zero
                    var cgst = 0;
                 cgst=parseFloat($('#totcgstamt').val());
                 var sgst=parseFloat($('#totsgstamt').val());
                 var a3=cgst+sgst;
                    // set the computed value to 'totalPrice' textbox
                    $('#tottaxamt').val(a3);

                    // initialize the sum (total price) to zero
                    var sum = 0;
                
                        sum =$('#totamt').val();
                  
                    // set the computed value to 'totalPrice' textbox
                    $('#invval').val(Math.round(sum));

       
        
        
        
    
            }
            
            function decid(pp) {
     if(pp.valueOf()==='No'){
         document.getElementById("totalPrice1").disabled = true;
     }else{
         document.getElementById("totalPrice1").disabled = false;
     }
  }
            
            
            
         
            
        </script>
         
         
  
  
  
  
  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <s:iterator value="ulist" var="myobj"> 
             <s:if test="#myobj.lType == 'user'">  
                <%@include  file="/upperpage2.jsp" %>
            </s:if>
            <s:else>
                 <%@include  file="/upperpage1.jsp" %>
            </s:else>
   
  
  <!-- Left side column. contains the logo and sidebar -->
 
  <!-- Content Wrapper. Contains page content -->
 
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <center>
      <h2> SAI VENKATA KRISHNA READYMIX INDUSTRY </h2>
      <h3>TAX INVOICE</h3>
        </center>
     
    </section>

    
    
    
    <section class="content">
<s:form action="insertTaxInvoice" theme="css_xhtml" onsubmit="return validateForm()">
    <s:hidden name="lid" value="%{lid}"/>
    <s:hidden id="inv1" name="invoiceNo" value="00%{invoi}"/>
      <!-- row -->
      <div class="row">
        <div class="col-md-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
                <div class="box box-warning">  
            <div class="box-header">
              
                
             <table>
                 <tr>
    <div class="block">
        &nbsp;
        <td style="padding-left: 80px;">
    <label>Invoice No: </label>
     <s:if test="#myobj.lType == 'user'">  
    <s:textfield id="invoice" value="00%{invoi}" readonly="true"  name="tdto.invoiceNo" onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Your Invoice Number" size="50" />
     </s:if>
    <s:else>
     <s:textfield id="invoice" value="00%{invoi}"  name="tdto.invoiceNo" onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Your Invoice Number" size="50" />
    </s:else>
        
        </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
    <label>Transport Mode:</label>
        <s:textfield id="trans" name="tdto.transportMode" onkeypress="return isAlphaKey(event)" cssClass="form-control" placeholder="Transportation Mode" size="50" />
    </td>
    </div>
           </tr>
    
           <td><br/></td>         
      <tr>
    <div class="block">
      <td style="padding-left: 80px;">
    <label>Invoice date:</label>
     <div class="input-group date">
      <div class="input-group-addon">
          <i class="fa fa-calendar"></i>
      </div>
          <s:date name="%{new java.util.Date()}" format="dd/MM/yyyy" var="aaaa"/>
          <s:textfield  data-date-format="dd/mm/yyyy" readonly="true" name="tdto.invoiceDate" onkeypress="return isDecimalKey(event)"  cssClass="form-control " value="%{aaaa}" placeholder="Select Date" size="50" />
       </div>
        </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
    <label>Vehicle number:</label>
        <s:textfield id="vehno" name="tdto.vehNo"  onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Vehicle No" size="50" />
    </td>
  
           </tr>
           
       
             <td><br/></td>
              <tr>
    <div class="block">
    <td style="padding-left: 80px;">
    <label>Reverse Charge (Y/N): </label>
    <s:select id="charge" list="{'Yes','No'}"  headerKey="" onchange="decid(this.value)"  headerValue="Select" name="tdto.reverseCharge" onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Tax Is Payable On Reverse Charge"  />
        </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
    <label>Date of Supply:</label>
        <div class="input-group date">
      <div class="input-group-addon">
          <i class="fa fa-calendar"></i>
      </div>
      <s:textfield  readonly="true" data-date-format="dd/mm/yyyy" name="tdto.dateOfSupply" onkeypress="return isDecimalKey(event)"  cssClass="form-control " value="%{aaaa}" placeholder="Select Date" size="50" />
       </div>
   </td>
  
           </tr>
                
             <td><br/></td>
               <tr>
    
        <td style="padding-left: 80px;">
            <div style="display: inline-block;">
                <div style="float: left">
    <label>State: </label>
    
    <s:textfield id="state" name="tdto.state" cssClass="form-control" value="Andhra Pradesh" readonly="true" size="30" />
        </div>
     <div style="float: right">
     <label>Code: </label>
     <s:textfield id="code" name="tdto.code" cssClass="form-control" value="37" readonly="true" placeholder="Your GSTIN Number" size="15" />
            </div>
            </div>
        </td>
        <td>&#X00A0;</td>
   <td style="padding-left: 130px;">
    <label>Place of Supply</label>
        <s:textfield id="place" name="tdto.placeOfSupply" onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter place of supply" size="50" />
    </td>
   
           </tr>
    
           <td><br/></td>     
             
    
             </table>
     </div>
           
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </div>
      
      
      
      
      
       <div class="row">
        <div class="col-md-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
               <div class="box box-warning">    
            <div class="box-header">
              
                
             <table>
                 <tr>
                     <th style="text-align:center;word-spacing: 3px;letter-spacing: 2px"><u>BILL TO PARTY</u></th>
                     <td>&#x00A0;</td>
                     <th style="text-align:center;word-spacing: 3px;letter-spacing: 2px"><u>SHIP TO PARTY</u></th>
                 </tr>
                 <tr><td colspan="3">&#x00A0;</td></tr>
                 <tr>
    <div class="block">
        &nbsp;
        <td style="padding-left: 80px;">
    <label>Name:</label>
     <s:textfield id="rname"  name="tdto.billToName" onkeypress="return isAlphaKey(event)" cssClass="form-control recName" placeholder="Name Of Receiver" size="50" />
    </td>
    

    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
    <input type="checkbox" name="billingtoo" onclick="FillBilling(this.form)" id="chk-01"/>
    <label>Name: (Tick if Name is same)</label>
        <s:textfield id="cname" name="tdto.shipToName" onkeypress="return isAlphaKey(event)" cssClass="form-control conName" placeholder="Name Of Consignee" size="50" />
    </td>
    </div>
           </tr>
    
           <td><br/></td>         
      <tr>
    <div class="block">
       
        <td style="padding-left: 80px;">
    <label>Address:</label>
      <s:textarea id="raddr" name="tdto.billToAddress" onkeyup="checkInput2(this)"  rows="4" cols="20" cssClass="form-control recAdd" placeholder="Enter Receiver Address"/>
    </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
       <input type="checkbox" name="billingtoo1" onclick="FillBilling1(this.form)" id="chk-01"/>
    <label>Address: (Tick if Address is same)</label>
        <s:textarea id="caddr" name="tdto.shipAddress"  onkeyup="checkInput2(this)" rows="4" cols="20" cssClass="form-control conAdd" placeholder="Enter Consignee Address"/>
    </td>
    </div>
           </tr>
           
           
             <td><br/></td>         
      <tr>
    <div class="block">
       
        <td style="padding-left: 80px;">
    <label>GSTIN:</label>
     <s:textfield id="rgst"  name="tdto.billToGstin"  cssClass="form-control recSt" placeholder="GSTIN Of Receiver" size="50" />
    </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
        <input type="checkbox" name="billingtoo2" onclick="FillBilling2(this.form)" id="chk-01"/>
    <label>GSTIN: (Tick if GSTIN is same)</label>
      <s:textfield id="cgst" name="tdto.shipToGstin" onkeypress="return isDecimalKey(event)" cssClass="form-control conSt" placeholder="GSTIN Of Consignee" size="50" />
    </td>
    </div>
           </tr>
           
           
           
           
             <td><br/></td>         
      <tr>
    
        
        <td style="padding-left: 80px;">
    <div style="display: inline-block;">
                <div style="float: left">
    <label>State: </label>
    
    <s:textfield id="i" name="tdto.billTostate" readonly="true" cssClass="form-control recS" value="Andhra Pradesh" size="30" />
         
         </div>
     <div style="float: right">
     <label>Code: </label>
     <s:textfield id="i" name="tdto.billToCode" readonly="true" cssClass="form-control" value="37" size="15" />
            </div>
            </div>
        </td>
    <td>&#x00A0;</td>
   <td style="padding-left: 130px;">
         <div style="display: inline-block;">
                <div style="float: left">
         <!--<input type="checkbox" name="billingtoo3" onclick="FillBilling3(this.form)" id="chk-01"/>-->
    <label>State: </label>
    
    <s:textfield id="rstate"  name="tdto.shipToState" value="Andhra Pradesh" cssClass="form-control conS" readonly="true" size="30" />
         
         </div>
     <div style="float: right">
         <label>Code: </label>
         <s:textfield id="cstate"  name="tdto.shipToCode" value="37" readonly="true" cssClass="form-control" size="15" />
            </div>
            </div>
   </td>
    
           </tr>
            <td><br/></td>  
            
    
             </table>
    
            

            <!-- /.box-header -->
           
          </div>
          <!-- /.box -->
        </div>  </div>  </div>  </div>
             
         
          
         <div class="row">
        <div class="col-md-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
               <div class="box box-warning">    
            <div class="box-header">
<!--                <table id="two1" >
                    <tr><td style="padding-left: 450px;"><input type="button" value="Add Row"  class="btn btn-primary" onclick="addRow('one1')" onkeyup="myFunction()"/>   
        </td></tr>
</table>-->
                 &#x00A0;&#x00A0;  
    <table  border="1" style="border-collapse: collapse;" id="one1" class="weight-table"> 
       <tr>
         
         <th rowspan="2" style="text-align: center">Grades Description</th>
          <th rowspan="2" style="text-align: center">HSN Code(GST)</th>
         <th rowspan="2" style="text-align: center">Qty (Cum)</th>
           <th rowspan="2" style="text-align: center">Basic Value after Tax (Cum) &#8377;</th>
           <th rowspan="2" style="text-align: center">Basic Value before Tax (Cum) &#8377;</th>
          <th rowspan="2" style="text-align: center">Taxable value &#8377;</th>
          <th colspan="2" style="text-align: center"> CGST </th> 
         <th colspan="2" style="text-align: center">SGST</th>
        <th rowspan="2" style="text-align: center">Total &#8377;</th>
     </tr>
       <tr>
         <th style="text-align: center">Rate %</th>
          <th style="text-align: center">Amount &#8377; </th>
         <th style="text-align: center">Rate %</th>
          <th style="text-align: center">Amount &#8377; </th>
       </tr>
     
    <% for(int i=0;i<1;i++) {%>         
       <%--<s:hidden name="id" value="%{id}" />--%>
   <tr>
       <td style="padding: 0;"> <s:select list="glist" id="tri" cssStyle="width:140px;" name="tdto.productDesc" cssClass="form-control" headerKey="" headerValue="Select Grade"  theme="simple"/></td>
       <td><s:textfield name="tdto.hsnCode" readonly="true" value="38245010" onkeypress="return isNumberKey(this,event)"   cssClass="form-control price valu1" theme="simple"></s:textfield></td>
       <td><s:textfield id="qtyval" name="tdto.qty" onkeypress="return isNumberKey(this,event)"   cssClass="form-control qtyval qtyvals" theme="simple"></s:textfield></td>
       <td><s:textfield id="valu1" name="tdto.afterTax" onkeypress="return isNumberKey(this,event)"   cssClass="form-control valu1 aftertax" theme="simple"></s:textfield></td>
       <td><s:textfield id="expprod" readonly="true" name="tdto.beforeTax" onkeypress="return isNumberKey(this,event)"   cssClass="form-control expprod beforetax" theme="simple"></s:textfield></td>
       <td><s:textfield id="taxval" readonly="true" name="tdto.taxableValue" onkeypress="return isNumberKey(this,event)"   cssClass="form-control taxval taxables" theme="simple"></s:textfield></td>
       <td><s:textfield name="tdto.cgRate"  readonly="true" value="9" onkeypress="return isNumberKey(this,event)"   cssClass="form-control cgst" theme="simple"></s:textfield></td>
       <td><s:textfield name="tdto.cgAmt" readonly="true" id="cgstval" onkeypress="return isNumberKey(this,event)"   cssClass="form-control cgstval" theme="simple"></s:textfield></td>
       <td><s:textfield name="tdto.sgRate" readonly="true" value="9" onkeypress="return isNumberKey(this,event)"   cssClass="form-control sgst" theme="simple"></s:textfield></td>
       <td><s:textfield name="tdto.sgAmt" readonly="true" id="sgstval" onkeypress="return isNumberKey(this,event)"   cssClass="form-control sgstval" theme="simple"></s:textfield></td>
       <td><s:textfield name="tdto.chTotal" readonly="true" id="totval" onkeypress="return isNumberKey(this,event)"   cssClass="form-control totval" theme="simple"></s:textfield></td>
      
   </tr>
       <% } %>  
       
   
   </table>
         
         
          <table border="1" width="100%">
      <tr>
   <td width="22.9%" class="text-center"><b>Total</b></td>  
   <td><s:textfield name="tdto.totalQty" size="16.9" id="totalqty" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
      
    <td><s:textfield name="tdto.totalValAtax" size="16.9" id="totalaftertax" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
   <td><s:textfield name="tdto.totalValBtax" size="16.9" id="totalbeforetax" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
   <td><s:textfield name="tdto.totalTaxval" size="16.9" id="totaltaxables" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
   <td width="8.5%">&#X00A0;</td>
   <td><s:textfield name="tdto.totalCgstAmt" size="16.9" id="totcgstamt" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
    <td width="8.5%">&#X00A0;</td>
    <td><s:textfield name="tdto.totalSgstAmt" size="16.9" id="totsgstamt" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
    <td><s:textfield  size="16.5" id="totamt" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
      </tr>
  
  </table>
   
   <table border="1" width="100%">
        <tr>
       <td colspan="2" style="text-align: right"><b>Total Tax Amount:&#X00A0;&#X00A0;&#X00A0;&#X00A0;  </b></td> 
      
       <td colspan="2"><s:textfield size="27.8" id="tottaxamt" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
   
   </tr>
   <tr>
          <td class="text-center" style="text-align: right"><b> Invoice Value &#8377; :&#X00A0;&#X00A0;&#X00A0;&#X00A0; </b></td> 
          <td><s:textfield id="invval" name="tdto.totalInv" cssClass="form-control" readonly="true" theme="simple"></s:textfield></td>
     <td class="text-center"  style="text-align: right"><b>GST on Reverse Charge: &#X00A0;&#X00A0;&#X00A0;&#X00A0; </b></td> 
      
       <td><s:textfield name="tdto.gstReverseCharge" id="totalPrice1" cssClass="form-control" theme="simple"></s:textfield></td>
   </tr>
   </table>
         &#x00A0;&#x00A0;&#x00A0;
            </div>  </div>  </div>  </div></div>
         
         
           <div class="row">
        <div class="col-md-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
               <div class="box box-warning">    
            <div class="box-header">
                <table>
                     <tr>
    <div class="block">
       
        
   <td style="padding-left: 80px;">
       <b><u><span style="word-spacing: 3px;letter-spacing: 2px">BANK DETAILS</span></u></b><br/>
       <label>Bank Name:</label>
                 <div>
                 <s:textfield id="bankname" name="tdto.bankname" value="Andhra Bank"  onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter Bank Name" size="50" />
               
            </div>
        <label>Bank A/C:</label>
       
            <div>
                <s:textfield id="bankac" name="tdto.bankAc" value="031413100000238"  onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter Bank A/C Number" size="50" />
               
            </div>
                 <label>Bank Branch:</label>
               <div>
                   <s:textfield id="bankbr" name="tdto.bankbranch" value="Koritepadu Road, Guntur"   onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter Bank Branch" size="50" />
               
            </div>
                
                <label>Bank IFSC:</label>
                 <div>
                     <s:textfield id="bankifsc" name="tdto.bankIfsc" value="ANDB0000314"  onkeypress="return isDecimalKey(event)" cssClass="form-control" placeholder="Enter IFSC Code" size="50" />
               
            </div>
     
    </td>
    <td>&#x00A0;</td>
    <td style="padding-left: 130px;">
    <label>Terms &#38; Conditions</label>
     <s:textarea id="tc" name="tdto.termsCond"  rows="10" cols="65" value="1. We declare that this invoice Shows the actual price of the goods  described and that all are true and correct.                                                   2. We declare to the best of our knowledge and belief that the particulars stated herein are true and correct and there is no additional consideration accuring to use either directly or indirectly in any manner other amounts indicated here." readonly="true" cssClass="form-control"/>
    </td>
    
    </div>
           </tr>
                </table>
            </div>
               </div>  
               </div></div></div>
         
              <table>
                  <tr><td style="padding-left: 470px;"><s:submit id="yyy"  value="submit" cssClass="btn btn-primary yyy" onclick="return validate1()" onsubmit="return validateform()" />   
        </td></tr>
</table>
      
      </s:form>
    </sectiLon>
     </s:iterator>
    
    

  <!-- /.content-wrapper -->
 

  
 
</div>
           <%@include file="Footer.jsp" %>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script type="text/javascript" src="regvalid.js"></script>

<!-- Page script -->
<script>
              
                
                
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

    //Datemask dd/mm/yyyy
    $("#datemask").inputmask("yyyy/mm/dd", {"placeholder": "yyyy/mm/dd"});
    //Datemask2 mm/dd/yyyy
    $("#datemask2").inputmask("yyyy/mm/dd", {"placeholder": "yyyy/mm/dd"});
    //Money Euro
    $("[data-mask]").inputmask();

    //Date range picker
    $('#reservation').daterangepicker();
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'DD/MM/YYYY'});
    //Date range as a button
    $('#daterange-btn').daterangepicker(
        {
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function (start, end) {
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
    
      $('#datepicker1').datepicker({
      autoclose: true
    });
    $('#datepicker2').datepicker({
      autoclose: true
    });

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });

    //Colorpicker
    $(".my-colorpicker1").colorpicker();
    //color picker with addon
    $(".my-colorpicker2").colorpicker();

    //Timepicker
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
  
  
   function validateForm() {

                                    var x = $("#totalqty").val();
                                    var y = $("#totalaftertax").val();
                                    var z = $("#totalbeforetax").val();
                                    var a=$('totaltaxables').val();
                                    var b=$("totcgstamt").val();
                                    var c=$("totsgstamt").val();
                                    var d=$("totamt").val();
                                    
                           //         alert(z);
                            //            alert(a);
                                    if ((x === '0' || a==='undefined' || y === '0' || z === '0' || a==='0' || b==="0" || c==="0" || d==="0") || (($("#totalqty").val()).length === 0 || ($("#totalaftertax").val()).length === 0 || ($("#totalbeforetax").val()).length === 0 || ($("#totaltaxables").val()).length === 0 || ($("#totcgstamt").val()).length === 0 || ($("#totsgstamt").val()).length === 0 || ($("#totamt").val()).length === 0)) {
                                        alert("Please fill the data in the table and move the mouse");
                                        return false;
                                    }
                                    
                               
                               
                               
                                    
                                }
                                
                                
                                
     
                 $(document).ready(function () {
    $('.weight-table tr').on('mousemove', function () {
           
      
              $('.weight-table tr').each(function () {
                  
                //  var quant1=<s:property value="invlist1"/>;
               //   alert(quant1);
           
             var boxtype1=$(this).find("#tri option:selected").text();     
                
               if(boxtype1==='Select Grade' || boxtype1.length===0)   {
                  
                      $(this).find(".qtyval").attr('disabled',true);
                       $(this).find(".valu1").attr('disabled',true);
                    
                 }
                 else {
                     $(this).find(".qtyval").attr('disabled',false);
                       $(this).find(".valu1").attr('disabled',false);
                 }
               
              
                                            });
                                            return false;
                                        });
                                    });    
                           
//                                    
//                                        $(document).ready(function () {
//    $('.weight-table tr').on('mousemove', function () {
//           
//      
//              $('.weight-table tr').each(function () {
//           
//             var  x = $(this).find('.qtyval').val();
//           //  alert(x);
//             if(x.length===0) {
//                 alert(x);
//                 $(this).find(".valu1").attr('disabled',true);
//             }
//             else {
//                 alert(x);
//                  $(this).find(".valu1").attr('disabled',false);
//             }
//             
//              
//                                            });
//                                            return false;
//                                        });
//                                    });    
//                                    
                                    
                                
                            
                                
  
 
  
  
          $(document).ready(function () {
    $('.weight-table tr').on('mousemove', function() {
        $('.weight-table tr').each(function() {
            
         var n=0;
         //  var x = parseFloat(document.getElementById("valu1").value);
         var  x = $(this).find("#valu1").val();
        
           var dateTotal = ((x*100)/118);
       
            n=dateTotal.toFixed(2);
            
               if(n!=="NaN") {
            $(this).find('input.expprod').val(n);
             $(this).find('input.cgst').val("9");
           $(this).find('input.sgst').val("9");
              }
              else {
            $(this).find('input.expprod').val("");       
              }
              
        });
        return false;
    }); 

    $('.weight-table tr').on('mousemove', function() {
        $('.weight-table tr').each(function() {
          
         var n=0;
        
        var x = $(this).find("#qtyval").val();
         var y = $(this).find("#expprod").val();
        
                     sum = (x*y);
                        n = sum.toFixed(2);
                   
               if(n!=="NaN") {
            $(this).find('input.taxval').val(n);
              }
              else {
            $(this).find('input.taxval').val("");       
              }
              
        });
        return false;
    }); 
    
     $('.weight-table tr').on('mousemove', function() {
        $('.weight-table tr').each(function() {
          
         var n=0;
        
        var x = $(this).find("#taxval").val();
       
        
                     sum = ((x*9)/100);
                        n = sum.toFixed(2);
                   
               if(n!=="NaN") {
            $(this).find('input.cgstval').val(n);
              }
              else {
            $(this).find('input.cgstval').val("");       
              }
              
        });
        return false;
    }); 
    
    $('.weight-table tr').on('mousemove', function() {
        $('.weight-table tr').each(function() {
          
         var n=0;
        
        var x = $(this).find("#taxval").val();
       
        
                     sum = ((x*9)/100);
                        n = sum.toFixed(2);
                   
               if(n!=="NaN") {
            $(this).find('input.sgstval').val(n);
              }
              else {
            $(this).find('input.sgstval').val("");       
              }
              
        });
        return false;
    }); 
    
    $('.weight-table tr').on('mousemove', function() {
        $('.weight-table tr').each(function() {
          
         var n=0;
        
        var x = parseFloat($(this).find("#taxval").val());
        var y = parseFloat($(this).find("#cgstval").val());
         var z = parseFloat($(this).find("#sgstval").val());
       // alert(x+"ii"+y+"uu"+z);
      //  var a=parseFloat($(this).find("#totamt").val());
      
              var       sum = (x+(y+z));
                        n = sum.toFixed(2);
             //   alert(n);
               if(n!=="NaN") {
            $(this).find('input.totval').val(n);
         
            
             //  alert(n);
              }
              else {
            $(this).find('input.totval').val("");       
              }
              
        });
        return false;
    }); 
    
    
    
    
  $('.qtyvals').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.qtyvals').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalqty').val(sum);

                });
                
                
                 $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.cgstval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totcgstamt').val(sum);

                });
                
                   $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.sgstval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totsgstamt').val(sum);

                });
                
                 $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.totval').each(function () {
                        sum += Number($(this).val());
                     //  alert(sum);
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totamt').val(sum);

                });
                
            $('.aftertax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.aftertax').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalaftertax').val(sum);

                });    
                
                $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.beforetax').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totalbeforetax').val(sum);

                }); 
                 $('.taxables').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                 $('.taxables').each(function () {
                        sum += Number($(this).val());
                       
                    });

                    // set the computed value to 'totalPrice' textbox
                    $('#totaltaxables').val(sum);

                }); 
                
                  $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var cgst = 0;
                 cgst=parseFloat($('#totcgstamt').val());
                 var sgst=parseFloat($('#totsgstamt').val());
                 var a3=cgst+sgst;
                    // set the computed value to 'totalPrice' textbox
                    $('#tottaxamt').val(a3);

                }); 
                
                
            $('.beforetax').mouseenter(function () {

                    // initialize the sum (total price) to zero
                    var sum = 0;
                
                        sum =$('#totamt').val();
                       
                   

                    // set the computed value to 'totalPrice' textbox
                    $('#invval').val(Math.round(sum));

                });     
    
});
  
  
  
  
  
  
  
</script>
</body>
</html>
