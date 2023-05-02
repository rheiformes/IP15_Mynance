//
//  Account.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 4/27/23.
//


import Foundation

class Account {
    var transactions: [Transaction] = []
    
    
    
    init(transactions: [Transaction]) {
        self.transactions = transactions
        
        //saveTransactionsToDefaults()
        
        
    }
    
    /** NOTE: I couldn't get the persistence to work before class ended (and I won't be back in class before senior grades are due), but here's what I had so far: */
    
    /*
    func saveTransactionsToDefaults() {
        do {
            let encodedData = try JSONEncoder().encode(transactions)
            let userDefaults = UserDefaults.standard
            userDefaults.set(encodedData, forKey: "transactions")
        }
        catch {
            print("can't encode transactions!")
        }
    }
    */

    
    func getBalance() -> Double {
        var balance:Double = 0
        for t in transactions {
            balance += t.value
        }
        return balance
    }
    
    func addTransaction(_ transaction: Transaction) {
        transactions.append(transaction)
        //saveTransactionsToDefaults()
    }
    
    
}
