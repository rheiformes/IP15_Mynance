//
//  AddTransactionViewController.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 4/28/23.
//

import UIKit

class AddTransactionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? HomeViewController {
            var value = Double(valueField.text ?? "0.00") ?? 0.00
            let description = descriptionField.text ?? ""
            let type = TransactionTypes.allCases[typePicker.selectedRow(inComponent: 0)]
            if type != TransactionTypes.income {
                value *= -1
            }
            destinationVC.thisAccount.addTransaction(Transaction(type: type, value: value, description: description))
            
        }
    }
    
    /** help: https://codewithchris.com/uipickerview-example/ */
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TransactionTypes.allCases.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return TransactionTypes.allCases[row].stringValue()
    }
    

    @IBOutlet var valueField: UITextField!
    @IBOutlet var descriptionField: UITextField!
    @IBOutlet var typePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typePicker.delegate = self
        typePicker.dataSource = self
        // Do any additional setup after loading the view.
    }
    

//

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
