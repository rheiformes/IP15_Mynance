//
//  HomeViewController.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 4/27/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var balanceLbl: UILabel!
    
    //let transactionOne = Transaction(type: .income, value: 5000, description: "paycheck")
    var thisAccount = Account(transactions: [Transaction(type: .income, value: 5000, description: "paycheck")])
    
    @IBOutlet var transactionTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transactionTable.dataSource = self
        balanceLbl.text = "$" +  String(format: "%.2f", thisAccount.getBalance())
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return thisAccount.transactions.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)

        // Configure the cell...
        let thisTransaction = thisAccount.transactions[indexPath.section]
        
        
        var content = cell.defaultContentConfiguration()
        content.text = "$" + String(format: "%.2f", thisTransaction.value)
        content.secondaryText = thisTransaction.description
        //cart.fill", "dollarsign.circle.fill", and "bolt.fill".
        switch thisTransaction.type {
        case .income:
            content.image = UIImage(systemName: "dollarsign.circle.fill")
        case .grocery:
            content.image = UIImage(systemName: "cart.fill")
        case .utility:
            content.image = UIImage(systemName: "bolt.fill")
        }
        
        
        cell.contentConfiguration = content
        print("done")
        return cell
    }
    
    
    

    

}
