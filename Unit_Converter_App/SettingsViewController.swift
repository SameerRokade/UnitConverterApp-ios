//
//  SettingsViewController.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 08/03/2021.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    //creating outlets for label and picker

    @IBOutlet weak var currentValue: UILabel!
    
    
    @IBOutlet weak var decimalChoices: UIPickerView!
    
    //array of decimals types
    let decimalPlaces = ["0 Decimal Places", "1 Decimal Places", "2 Decimal Places", "3 Decimal Places", "4 Decimal Places"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        //setting current decimal place in label
        self.currentValue.text = "Current Decimal places: " + defaults.string(forKey: "decimal")!
        decimalChoices.dataSource = self
        decimalChoices.delegate = self
        // Do any additional setup after loading the view.
        
    }
    
    // pickerview functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return decimalPlaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return decimalPlaces[row]
    }

   
    // action for button to save settings of decimal points
    @IBAction func saveSettings(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        let selectedValue = decimalChoices.selectedRow(inComponent: 0)
        
        //storing the selected decimal value in same key
        if selectedValue == 0{
            defaults.set("%.0f", forKey: "decimal")
        }else if selectedValue == 1{
            defaults.set("%.1f", forKey: "decimal")
        }else if selectedValue == 2{
            defaults.set("%.2f", forKey: "decimal")
        }else if selectedValue == 3 {
            defaults.set("%.3f", forKey: "decimal")
        }else {
            defaults.set("%.4f", forKey: "decimal")
        }
        
        self.currentValue.text = "Current decimal places: " + String(decimalChoices.selectedRow(inComponent: 0))
        
    }
    
    
    
}
