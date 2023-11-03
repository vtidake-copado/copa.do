Public with sharing Class AppleWatch{
 Public Static void appleWatchmethod(list<Opportunity> lopt ){
    for (Opportunity opp : lopt) {
        Task t        = new Task();
        t.Subject     = 'Apple Watch Promo' ;
        t.Description = 'Send them one ASAP' ;
        t.Priority    = 'High' ;
        t.WhatId      = opp.Id;
      //t.Activity_Custom_field_3__c = true;
        insert t;
     /*Comment to test smart resolved - Second change in Dev123*/
     /*Comment test tags Dev 1 mod*/
   }
  }
 }