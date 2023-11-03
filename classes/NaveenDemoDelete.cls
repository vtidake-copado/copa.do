Public with sharing Class NaveenDemoDelete{
 Public Static void NaveenDemoDeletemethod(list<Opportunity> lopt ){
    for (Opportunity opp : lopt) {
        Task t        = new Task();
        t.Subject     = 'Naveen Delete' ;
        t.Description = 'Send them one ASAP' ;
        t.Priority    = 'Low' ;
        t.WhatId      = opp.Id;
        insert t;
     /*Comment DDD change CS Code org*/
     /*Comment Test on Function*/
   }
  }
 }