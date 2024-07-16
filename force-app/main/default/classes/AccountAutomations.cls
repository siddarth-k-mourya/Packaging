public class AccountAutomations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            system.debug(a.Description);
            return a;
        }
    }
    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Madrid'; 
        a.billingpostalcode ='28023'; 
        system.debug( a.billingpostalcode);
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = 'Basauri, 6'; 
        a.shippingstate = 'Madrid';
        a.shippingpostalcode ='28023';
        system.debug(a.shippingpostalcode);
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='688456789';
        system.debug( a.Phone);
        return a;
    }
    public static Account setDefaultURL(Account a) {
        
        a.website = 'www.copa.do'; 
        system.debug( a.website);
        return a;
    }
    
    public static Account setDefaultURL1(Account a) {
        
        a.website = 'www.copa.do'; 
        system.debug( a.website);
        return a;
    }
    
     public static Account setDefaultPhone1(Account a) {
        a.Phone='845678921231';
        system.debug( a.Phone);
        return a;
    }
    
}