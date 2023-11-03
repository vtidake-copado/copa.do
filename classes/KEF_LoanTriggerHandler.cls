Public with sharing Class KEF_LoanTriggerHandler{
 Public Static void appleWatchmethod(list<Opportunity> lopt ){
    for (Opportunity opp : lopt) {
        Task t        = new Task();
        t.Subject     = 'Apple Watch Promo' ;
        t.Description = 'Send them one ASAP' ;
        t.Priority    = 'High' ;
        t.WhatId      = opp.Id;
        insert t;
     /*Comment DDD change CS Code org*/
     /*Comment Test on Function*/
   }
  }
 }