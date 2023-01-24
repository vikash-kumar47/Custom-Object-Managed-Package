global class addUserLicence {
    global UserPackageLicense uPL {get;set;}
    global id xyz {get;set;}
    
   // global PackageLicense pl = [SELECT Id FROM PackageLicense WHERE NamespacePrefix = 'APXTConga4'];
    global addUserLicence(){
        uPL=new UserPackageLicense();
        uPL.UserId=xyz;
        uPL.PackageLicenseId='0505i000000btpXAAQ';   
    }
    
    global void save(){ 
        try{
            list<UserPackageLicense> userlist = new list<UserPackageLicense>();
            userlist.add(uPL);
            upsert userlist;
        }
        catch(exception e){
            system.debug('*****Exception*****'+ e); 
        }
    }
    // remove the user licence
    global void remove(){
        list<UserPackageLicense> uPL = [select id,PackageLicenseid,Userid from UserPackageLicense where PackageLicenseid='0505i000000btpXAAQ' AND userId =:uPL.UserId  limit 1];
        try{
            if(uPL.size()>0){
                delete uPL;
            } 
        }
        catch(exception e){
            system.debug('*****Exception*****'+ e);
        }
    }
}