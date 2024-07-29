Public with sharing Class DoNotUseAppleWatch{
 Public Static void appleWatchmethod(list<Opportunity> lopt ){
    for (Opportunity opp : lopt) {
        Task t        = new Task();
        t.Subject     = 'Apple Watch Promo';
        t.Description = 'Send them one ASAP';
        t.WhatId      = opp.Id;
        insert t;
     /*Commit conflict*/
     /*Comment Number 2*/ 
     
   }
  
  }
 
 }