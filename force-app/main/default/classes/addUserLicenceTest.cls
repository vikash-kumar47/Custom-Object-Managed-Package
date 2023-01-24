@istest
global class addUserLicenceTest {
    @istest
    global static void testMethods(){
        
        //PackageLicense pl = [SELECT Id FROM PackageLicense WHERE NamespacePrefix = 'APXTConga4'];
        addUserLicence apl = new addUserLicence();
        
        test.startTest();
        //apl.xyz='0055g00000EyMZSAA3';
        //apl.pl=pl;
        apl.save();
        
        apl.remove();
        
        test.stopTest();
        
    }
}