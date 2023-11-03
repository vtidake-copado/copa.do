Public Class AppleWatchV2{
 Public Static void AppleWatchmethod(list<Opportunity> lopt ){
    for (Opportunity opp : lopt) {
        Task t        = new Task();
        t.Subject     = 'Apple Watch Promo';
        t.Description = 'Send them one ASAP';
        t.Priority    = 'High';
        t.WhatId      = opp.Id;
        insert t;
     /*conflict here test 2334*/
     //another comment MOD
     /* new comment with XXX more comments*/
     /* boom comment comment*/
     //comment
       
    }

 
 }
}