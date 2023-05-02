//
//  TransactionTableViewCell.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 5/2/23.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

 
    @IBOutlet var icon: UIImageView!
    
    @IBOutlet var type: UILabel!
    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var costLbl: UILabel!
    @IBOutlet var dateLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with thisTransaction: Transaction) {
        self.costLbl.text = "$" +  String(format: "%.2f", abs(thisTransaction.value))
        if(thisTransaction.value < 0) {
            self.costLbl.text  = "- " + self.costLbl.text!
        }
        
        self.descriptionLbl.text = thisTransaction.description
        self.type.text = thisTransaction.type.stringValue()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd.yyyy"
        self.dateLbl.text = dateFormatter.string(from: Date())
        
        switch thisTransaction.type {
        case .income:
            self.icon.image = UIImage(systemName: "dollarsign.circle.fill")
        case .grocery:
            self.icon.image = UIImage(systemName: "cart.fill")
        case .utility:
            self.icon.image = UIImage(systemName: "bolt.fill")
        }
        
        
        /*
         
         content.text = "$" +  String(format: "%.2f", abs(thisTransaction.value))
         if(thisTransaction.value < 0) {
             content.text  = "- " + content.text!
         }
         
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
         
         
         */
        
        
    }
    

}
