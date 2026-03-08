public with sharing class asyncap {
    
// Task 1. Future Method
    @future   
    public static void updatelistacc(List<Id> accId) {

        List<Account> acclist = new List<Account>([SELECT Id, Name, Description FROM Account]);
        for(Account acc : acclist) {

            if (acc.Description == null) {
                acc.Description = 'Your Description is empty';
            }            
        }
        update acclist;
        }
}


// Task 3. Explanation
// Write a short explanation: Why future methods cannot accept sObjects.

// Future methods cannot accept sObjects because the record's data might change in the database before the method actually runs, leading to stale data or overwriting newer changes. 
// By passing only IDs, you force the method to query the most up-to-date version of the record at the exact moment of execution.
