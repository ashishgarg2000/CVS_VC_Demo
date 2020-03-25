Global with sharing class MyController {

    public string aid{set;get;}
    public List<Account> getArecords()
    {
        return [select id, name, billingcity, phone from Account limit 100];
    }
    
    public pagereference method1()
    {
        pagereference pr = new PageReference('/' + aid);
        return pr;  
        /* this is the sample change */
    }  
    
    
    
    public List<Contact> getBrecords()
    {
        return [select id, Title,name, phone, email from Contact limit 100];
    }
}