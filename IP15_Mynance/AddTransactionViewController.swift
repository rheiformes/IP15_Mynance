//
//  AddTransactionViewController.swift
//  IP15_Mynance
//
//  Created by Rai, Rhea on 4/28/23.
//

import UIKit

class AddTransactionViewController: UIViewController, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TransactionTypes.allCases.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return TransactionTypes.allCases[component].stringValue()
    }
    

    @IBOutlet var valueField: UITextField!
    @IBOutlet var descriptionField: UITextField!
    @IBOutlet var typePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userSave(_ sender: Any) {
        let value = Double(valueField.text ?? "0.00")
        let description = descriptionField.text ?? ""
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
