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
    }
    

    
    func getBalance() -> Double {
        var balance:Double = 0
        for t in transactions {
            balance += t.value
        }
        return balance
    }
    
    func addTransaction(_ transaction: Transaction) {
        transactions.append(transaction)
    }
    
    
}
