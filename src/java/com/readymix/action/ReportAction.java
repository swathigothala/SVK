/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.readymix.action;

import com.opensymphony.xwork2.ActionSupport;
import com.readymix.dto.TaxInvoiceDto;
import com.readymix.manager.LoginManager;
import com.readymix.manager.ReportsManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Swathi
 */
public class ReportAction extends ActionSupport{
    
    private LoginManager umaManager;
    private ReportsManager rm;
    private List ulist,glist,nlist,clist,gstlist;
    private List rlist,invlist,reportlist,gradecount;
    private int count_reg,count_common,count_supply;
    private static  int lid;
    private  int cid;
    private  int sid;
    private List monlist;
    private String monthname;
    private List montabdata,suplist,supcountlist,monsuplist,monsuplist2;
    private TaxInvoiceDto form;

    public List getMonsuplist2() {
        return monsuplist2;
    }

    public void setMonsuplist2(List monsuplist2) {
        this.monsuplist2 = monsuplist2;
    }

    public List getMonsuplist() {
        return monsuplist;
    }

    public void setMonsuplist(List monsuplist) {
        this.monsuplist = monsuplist;
    }

    public TaxInvoiceDto getForm() {
        return form;
    }

    public List getGstlist() {
        return gstlist;
    }

    public void setGstlist(List gstlist) {
        this.gstlist = gstlist;
    }

    public void setForm(TaxInvoiceDto form) {
        this.form = form;
    }
    
    public List getClist() {
        return clist;
    }

    public void setClist(List clist) {
        this.clist = clist;
    }

    public List getGlist() {
        return glist;
    }

    public void setGlist(List glist) {
        this.glist = glist;
    }

    public List getNlist() {
        return nlist;
    }

    public void setNlist(List nlist) {
        this.nlist = nlist;
    }

    public List getSuplist() {
        return suplist;
    }

    public void setSuplist(List suplist) {
        this.suplist = suplist;
    }

    public List getSupcountlist() {
        return supcountlist;
    }

    public void setSupcountlist(List supcountlist) {
        this.supcountlist = supcountlist;
    }

    public List getGradecount() {
        return gradecount;
    }

    public void setGradecount(List gradecount) {
        this.gradecount = gradecount;
    }

    public List getMontabdata() {
        return montabdata;
    }

    public void setMontabdata(List montabdata) {
        this.montabdata = montabdata;
    }

    public List getMonlist() {
        return monlist;
    }

    public void setMonlist(List monlist) {
        this.monlist = monlist;
    }

    public List getReportlist() {
        return reportlist;
    }

    public void setReportlist(List reportlist) {
        this.reportlist = reportlist;
    }

    public ReportAction() {
        ulist=new ArrayList();
        umaManager=new LoginManager();
        rlist=new ArrayList();
        rm=new ReportsManager();
        invlist=new ArrayList();
        monlist=new ArrayList();
        reportlist=new ArrayList();
        gradecount=new ArrayList();
        suplist=new ArrayList();
        supcountlist=new ArrayList();
        glist=new ArrayList();
        nlist=new ArrayList();
        clist=new ArrayList();
        form=new TaxInvoiceDto();
        gstlist=new ArrayList();
        monsuplist=new ArrayList();
        monsuplist2=new ArrayList();
    }

    public String getMonthname() {
        return monthname;
    }

    public void setMonthname(String monthname)
    {
        this.monthname = monthname;
    }

    public List getRlist()
    {
        return rlist;
    }

    public void setRlist(List rlist)
    {
        this.rlist = rlist;
    }

    public ReportsManager getRm()
    {
        return rm;
    }

    public void setRm(ReportsManager rm)
    {
        this.rm = rm;
    }

    public List getInvlist()
    {
        return invlist;
    }

    public void setInvlist(List invlist)
    {
        this.invlist = invlist;
    }

      
    public LoginManager getUmaManager()
    {
        return umaManager;
    }

    public void setUmaManager(LoginManager umaManager)
    {
        this.umaManager = umaManager;
    }

    public List getUlist()
    {
        return ulist;
    }

    public void setUlist(List ulist)
    {
        this.ulist = ulist;
    }

    public int getCount_reg()
    {
        return count_reg;
    }

    public void setCount_reg(int count_reg)
    {
        this.count_reg = count_reg;
    }

    public int getCount_common() {
        return count_common;
    }

    public void setCount_common(int count_common) {
        this.count_common = count_common;
    }

    public int getCount_supply() {
        return count_supply;
    }

    public void setCount_supply(int count_supply) {
        this.count_supply = count_supply;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }
     
     
    
    public String dailyReport() {
        try {
            this.ulist = umaManager.dataRetrieve(getLid());
            System.out.println("dkjghdh---------------dkgkjdh2222222222222dgkhg" + ulist);
            this.rlist=rm.dailyReport();
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return "success";
    }
    
      public String monthlyReport() {
        
         try {
            this.ulist = umaManager.dataRetrieve(getLid());
            System.out.println("dkjghdh---------------dkgkjdh2222222222222dgkhg" + ulist);
            
            this.rlist=rm.monthlyReport();
            this.invlist=rm.invCount();
            this.monlist=rm.getMonlist();
            this.reportlist=rm.gradeList();
            this.gradecount=rm.gradeCount();
            this.suplist=rm.getSupplierMost();
            this.supcountlist=rm.getSupplierMostCount();
            this.monsuplist=rm.getMonthlySuppliers();
            this.monsuplist2=rm.getMonthlySuppliers2();
             System.out.println("Report list is===================="+reportlist);
             System.out.println("Grade Count iss=================="+gradecount);
             }
        catch(IndexOutOfBoundsException e)
        {
            e.printStackTrace();
        }
        return "success";
    }
      
      public String reportspage()
      {
     try 
        {
             this.ulist = umaManager.dataRetrieve(getLid());
             this.glist=rm.getGrades();
             
             nlist=rm.getNames();
             gstlist=rm.gstinList();
             System.out.println(lid+"++++++++++++++++");
             System.out.println("gradessssssssss listttttttt"+glist);
             System.out.println("namesssssssssss listttttttt"+nlist);
         }
         catch(Exception e) 
         {
             
         }
        return "success";   
    }
    
    
        public String getGenreport() throws ParseException
        {
      this.ulist = umaManager.dataRetrieve(getLid());
      this.glist=rm.getGrades();
             
             nlist=rm.getNames();
        System.out.println("getttttttinggggggg listttttttt"+ulist);
         try{
              gstlist=rm.gstinList();
           System.out.println("trrrrrrrrrrrrrrr");
//           if(form.getInvoiceDate().length()==0 || form.getInvoiceDate1().length()==0 || form.getInvoiceNo()==null &&form.getProductDesc().equals("") || form.getBillToName().equals("")){
//               System.out.println("checkkkkkkkkkkkk"); 
//               addFieldError("form.invoiceDate","Please Select Fields"); 
//                 return "refresh";
//           }
        if(form.getInvoiceDate().length()==0){
            System.out.println("wrongggggggggg");
             addFieldError("form.invoiceDate","From date Should not be Empty"); 
               return "refresh";
        }
        if(form.getInvoiceDate1().length()==0){
             addFieldError("form.invoiceDate1","To date Should not be Empty"); 
               return "refresh";
        }
        Date d1 = new SimpleDateFormat("dd/MM/yyyy").parse(form.getInvoiceDate());
        Date d2 = new SimpleDateFormat("dd/MM/yyyy").parse(form.getInvoiceDate1());
         if(d1.after(d2))
         {
             addFieldError("form.invoiceDate","From date must be lessthan To date"); 
         }
       
           this.glist=rm.getGrades();
           rlist=rm.ParentList(getForm());
           clist=rm.ChildList(getForm());
           nlist=rm.getNames();
       if(rlist.isEmpty() || clist.isEmpty())
       {
               addFieldError("form.invoiceDate","Data Not Exists"); 
               return "refresh";
       }
       else {
            return "success"; 
       }
     
                  
          
        }
       catch(NullPointerException e)
        {
         //   e.printStackTrace();
        }
          
        return "refresh";
    }
      
}
