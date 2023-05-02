//
//  Transcation.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 4/27/23.
//



import Foundation

enum TransactionTypes: CaseIterable {
    case income
    case grocery
    case utility
    func stringValue() -> String {
            switch(self) {
            case .income:
                return "income"
            case .grocery:
                return "grocery"
            case .utility:
                return "utility"
            }
        }
}

class Transaction /*: Codable*/ {
    
    var type: TransactionTypes
    var value: Double
    var description: String
    
    init(type: TransactionTypes, value: Double, description: String) {
        self.type = type
        self.value = value
        self.description = description
    }
}
