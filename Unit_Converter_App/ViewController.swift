//
//  ViewController.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 26/02/2021.
//

import UIKit

class ViewController: UIViewController {

    
    //creating outlets of all the labels and textfields
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    @IBOutlet weak var textfield4: UITextField!
    @IBOutlet weak var textfield5: UITextField!
    @IBOutlet weak var textfield6: UITextField!
    @IBOutlet weak var textfield7: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setting the weight button selected to display fields related to weights.
        
        self.weightButton(UIBarButtonItem())
        
        //setting defaults decimal place value
        let defaults = UserDefaults.standard
        defaults.setValue("%.2f", forKey: "decimal")
        
        
        
    }

    
    //action for all the buttons with numbers
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if self.textfield1.isEditing{
            self.textfield1.text! += String(sender.tag)
            textfield_1_edit(textfield1)
        }
        if self.textfield2.isEditing{
            self.textfield2.text! += String(sender.tag)
            textfield_2_edit(textfield2)
        }
        if self.textfield3.isEditing{
            self.textfield3.text! += String(sender.tag)
            textfield_3_edit(textfield3)
        }
        if self.textfield4.isEditing{
            self.textfield4.text! += String(sender.tag)
            textfield_4_edit(textfield4)
        }
        if self.textfield5.isEditing{
            self.textfield5.text! += String(sender.tag)
            textfield_5_edit(textfield5)
        }
        if self.textfield6.isEditing{
            self.textfield6.text! += String(sender.tag)
            textfield_6_edit(textfield6)
        }
        if self.textfield7.isEditing{
            self.textfield7.text! += String(sender.tag)
            textfield_7_edit(textfield7)
        }
    }
    
        
    //action for button with decimal point
    
    @IBAction func decimalPoint(_ sender: UIButton) {
        if self.textfield1.isEditing{
            self.textfield1.text! += "."
            textfield_1_edit(textfield1)
        }
        if self.textfield2.isEditing{
            self.textfield2.text! += "."
            textfield_2_edit(textfield2)
        }
        if self.textfield3.isEditing{
            self.textfield3.text! += "."
            textfield_3_edit(textfield3)
        }
        if self.textfield4.isEditing{
            self.textfield4.text! += "."
            textfield_4_edit(textfield4)
        }
        if self.textfield5.isEditing{
            self.textfield5.text! += "."
            textfield_5_edit(textfield5)
        }
        if self.textfield6.isEditing{
            self.textfield6.text! += "."
            textfield_6_edit(textfield6)
        }
        if self.textfield7.isEditing{
            self.textfield7.text! += "."
            textfield_7_edit(textfield7)
        }
        
    }
    
    //action for button with negative number
    
    @IBAction func negativeButton(_ sender: UIButton) {
        if  (self.label1.text == "Celsius") && self.textfield1.isEditing{
            self.textfield1.text = "-"
        }else if (self.label2.text == "Fahrenheit") && self.textfield2.isEditing {
            self.textfield2.text = "-"
            
        }else if (self.label3.text == "Kelvin") && self.textfield3.isEditing{
            self.textfield3.text = "-"
        }
    }
    
    //action for delete button
    
    @IBAction func deleteButton(_ sender: UIButton) {
        
        if self.textfield1.isEditing{
            var str = self.textfield1.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield1.text = str
                
            }
            
        }
        if self.textfield2.isEditing{
            var str = self.textfield2.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield2.text = str
                
            }
        }
        if self.textfield3.isEditing{
            var str = self.textfield3.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield3.text = str
                
            }
        }
        if self.textfield4.isEditing{
            var str = self.textfield4.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield4.text = str
                
            }
        }
        if self.textfield5.isEditing{
            var str = self.textfield5.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield5.text = str
                
            }
        }
        if self.textfield6.isEditing{
            var str = self.textfield6.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield6.text = str
                
            }
        }
        if self.textfield7.isEditing{
            var str = self.textfield7.text!
            if str.count > 0 {
                str.removeLast()
                
                self.textfield7.text = str
                
            }
        }
        
        
    }
        
    //action for weight button
    
    @IBAction func weightButton(_ sender: UIBarButtonItem) {
        
        //unhiding the necessary labels and textfields
        
        self.label1.isHidden = false
        self.label2.isHidden = false
        self.label3.isHidden = false
        self.label4.isHidden = false
        self.label5.isHidden = false
        self.textfield1.isHidden = false
        self.textfield2.isHidden = false
        self.textfield3.isHidden = false
        self.textfield4.isHidden = false
        self.textfield5.isHidden = false
        
        // setting text values for labels and textfields
        
        self.label1.text = "Kilogram"
        self.label2.text = "Grams"
        self.label3.text = "Ounces"
        self.label4.text = "Pounds"
        self.label5.text = "Stone"
        self.textfield1.text = ""
        self.textfield2.text = ""
        self.textfield3.text = ""
        self.textfield4.text = ""
        self.textfield5.text = ""
        
        self.label6.isHidden = true
        self.label7.isHidden = true
        self.textfield6.isHidden = true
        self.textfield7.isHidden = true
        
        
    }
    
    // action for temperature button in the toolbar
    
    @IBAction func temperatureButton(_ sender: UIBarButtonItem) {
        
        //unhiding the necessary labels and textfields
        
        self.label1.isHidden = false
        self.label2.isHidden = false
        self.label3.isHidden = false
        self.textfield1.isHidden = false
        self.textfield2.isHidden = false
        self.textfield3.isHidden = false

        // setting text values for labels and textfields
        
        self.label1.text = "Celsius"
        self.label2.text = "Fahrenheit"
        self.label3.text = "Kelvin"
        self.textfield1.text = ""
        self.textfield2.text = ""
        self.textfield3.text = ""
        
        self.label4.isHidden = true
        self.label5.isHidden = true
        self.label6.isHidden = true
        self.label7.isHidden = true
        self.textfield4.isHidden = true
        self.textfield5.isHidden = true
        self.textfield6.isHidden = true
        self.textfield7.isHidden = true
        
        
        
    }
    
    // action for volume button in the toolbar
    
    @IBAction func volumeButton(_ sender: UIBarButtonItem) {
        
        //unhiding the necessary labels and textfields
        
        self.label1.isHidden = false
        self.label2.isHidden = false
        self.label3.isHidden = false
        self.label4.isHidden = false
        self.label5.isHidden = false
        self.textfield1.isHidden = false
        self.textfield2.isHidden = false
        self.textfield3.isHidden = false
        self.textfield4.isHidden = false
        self.textfield5.isHidden = false
        
        // setting text values for labels and textfields
        
        self.label1.text = "Gallon"
        self.label2.text = "Litre"
        self.label3.text = "Pint"
        self.label4.text = "Fluid Ounce"
        self.label5.text = "Mililitre"
        self.textfield1.text = ""
        self.textfield2.text = ""
        self.textfield3.text = ""
        self.textfield4.text = ""
        self.textfield5.text = ""
        
        self.label6.isHidden = true
        self.label7.isHidden = true
        self.textfield6.isHidden = true
        self.textfield7.isHidden = true
    }
    
    // action for length button in the toolbar
    
    @IBAction func lengthButton(_ sender: UIBarButtonItem) {
        
        //unhiding the necessary labels and textfields
        
        self.label1.isHidden = false
        self.label2.isHidden = false
        self.label3.isHidden = false
        self.label4.isHidden = false
        self.label5.isHidden = false
        self.label6.isHidden = false
        self.label7.isHidden = false
        self.textfield1.isHidden = false
        self.textfield2.isHidden = false
        self.textfield3.isHidden = false
        self.textfield4.isHidden = false
        self.textfield5.isHidden = false
        self.textfield6.isHidden = false
        self.textfield7.isHidden = false
        
        // setting text values for labels and textfields
        
        self.label1.text = "Metre"
        self.label2.text = "Kilometre"
        self.label3.text = "Miles"
        self.label4.text = "Centimetre"
        self.label5.text = "Yards"
        self.label6.text = "Milimetre"
        self.label7.text = "Inches"
        self.textfield1.text = ""
        self.textfield2.text = ""
        self.textfield3.text = ""
        self.textfield4.text = ""
        self.textfield5.text = ""
        self.textfield6.text = ""
        self.textfield7.text = ""
        
        
        
    }
    
    // action for speed button in the toolbar
    
    @IBAction func speedButton(_ sender: UIBarButtonItem) {
        
        //unhiding the necessary labels and textfields
        
        self.label1.isHidden = false
        self.label2.isHidden = false
        self.label3.isHidden = false
        self.label4.isHidden = false
        self.textfield1.isHidden = false
        self.textfield2.isHidden = false
        self.textfield3.isHidden = false
        self.textfield4.isHidden = false
        
        // setting text values for labels and textfields
        
        self.label1.text = "Metres/sec"
        self.label2.text = "Km/hour"
        self.label3.text = "miles/hour"
        self.label4.text = "knots"
        self.textfield1.text = ""
        self.textfield2.text = ""
        self.textfield3.text = ""
        self.textfield4.text = ""
        
        self.label5.isHidden = true
        self.label6.isHidden = true
        self.label7.isHidden = true
        self.textfield5.isHidden = true
        self.textfield6.isHidden = true
        self.textfield7.isHidden = true
    }
    
    //action for editing textfield 1
    
    @IBAction func textfield_1_edit(_ sender: UITextField) {
        
        // converting temperatures and setting it to textfields
        if self.label1.text == "Celsius"{
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitTemperature.celsius)
                self.textfield2.text = TempConvert.convert_to_f(value: textMeasurement)
                self.textfield3.text = TempConvert.convert_to_k(value: textMeasurement)
                
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
            }
            
        }
        // converting weights and setting it to textfields
        else if self.label1.text == "Kilogram" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitMass.kilograms)
                self.textfield2.text = WeightConvert.convert_to_grams(value: textMeasurement)
                self.textfield3.text = WeightConvert.convert_to_ounces(value: textMeasurement)
                self.textfield4.text = WeightConvert.convert_to_pounds(value: textMeasurement)
                self.textfield5.text = WeightConvert.convert_to_stone(value: textMeasurement)
                
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        }
        //converting volume and setting it to textfields
        else if self.label1.text == "Gallon" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitVolume.gallons)
                self.textfield2.text = VolumeConvert.convert_to_litre(value: textMeasurement)
                self.textfield3.text = VolumeConvert.convert_to_pint(value: textMeasurement)
                self.textfield4.text = VolumeConvert.convert_to_fluidOunce(value: textMeasurement)
                self.textfield5.text = VolumeConvert.convert_to_mililitre(value: textMeasurement)
                
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        
        }
        //converting lengths and setting it to textfields
        else if self.label1.text == "Metre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.meters)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
                self.textfield6.text = ""
                self.textfield7.text = ""
            }
        }
        //converting speed and setting it to textfields
        else if self.label1.text == "Metres/sec" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitSpeed.metersPerSecond)
                self.textfield2.text = SpeedConvert.convert_to_kmPerHour(value: textMeasurement)
                self.textfield3.text = SpeedConvert.convert_to_milesPerHour(value: textMeasurement)
                self.textfield4.text = SpeedConvert.convert_to_knots(value: textMeasurement)
            
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
            }
        }
            
    
    }
    
    //action for editing textfield 2
    
    @IBAction func textfield_2_edit(_ sender: UITextField) {
        
        // converting temperatures and setting it to textfields
        if self.label2.text == "Fahrenheit" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitTemperature.fahrenheit)
                self.textfield1.text = TempConvert.convert_to_c(value: textMeasurement)
                self.textfield3.text = TempConvert.convert_to_k(value: textMeasurement)
            
            }catch {
                self.textfield2.text = ""
                self.textfield3.text = ""
            }
        }
        // converting weights and setting it to textfields
        else if self.label2.text == "Grams"{
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitMass.kilograms)
                self.textfield1.text = WeightConvert.convert_to_kg(value: textMeasurement)
                self.textfield3.text = WeightConvert.convert_to_ounces(value: textMeasurement)
                self.textfield4.text = WeightConvert.convert_to_pounds(value: textMeasurement)
                self.textfield5.text = WeightConvert.convert_to_stone(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        }
        //converting volume and setting it to textfields
        else if self.label2.text == "Litre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitVolume.liters)
                self.textfield1.text = VolumeConvert.convert_to_gallon(value: textMeasurement)
                self.textfield3.text = VolumeConvert.convert_to_pint(value: textMeasurement)
                self.textfield4.text = VolumeConvert.convert_to_fluidOunce(value: textMeasurement)
                self.textfield5.text = VolumeConvert.convert_to_mililitre(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        
        }
        //converting lengths and setting it to textfields
        else if self.label2.text == "Kilometre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.kilometers)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
                self.textfield6.text = ""
                self.textfield7.text = ""
            }
            
        }
        //converting speed and setting it to textfields
        else if self.label2.text == "Km/hour" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitSpeed.kilometersPerHour)
                self.textfield1.text = SpeedConvert.convert_to_metresPerSec(value: textMeasurement)
                self.textfield3.text = SpeedConvert.convert_to_milesPerHour(value: textMeasurement)
                self.textfield4.text = SpeedConvert.convert_to_knots(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
            }
        }
        
        
    }
    
    //action for editing textfield 3
    
    @IBAction func textfield_3_edit(_ sender: UITextField) {
        
        // converting temperatures and setting it to textfields
        if self.label3.text == "Kelvin" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitTemperature.kelvin)
                self.textfield1.text = TempConvert.convert_to_c(value: textMeasurement)
                self.textfield2.text = TempConvert.convert_to_f(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
            }
            
        }
        // converting weights and setting it to textfields
        else if self.label3.text == "Ounces" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitMass.kilograms)
                self.textfield1.text = WeightConvert.convert_to_kg(value: textMeasurement)
                self.textfield2.text = WeightConvert.convert_to_grams(value: textMeasurement)
                self.textfield4.text = WeightConvert.convert_to_pounds(value: textMeasurement)
                self.textfield5.text = WeightConvert.convert_to_stone(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        }
        //converting volume and setting it to textfields
        else if self.label3.text == "Pint" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitVolume.pints)
                self.textfield1.text = VolumeConvert.convert_to_gallon(value: textMeasurement)
                self.textfield2.text = VolumeConvert.convert_to_litre(value: textMeasurement)
                self.textfield4.text = VolumeConvert.convert_to_fluidOunce(value: textMeasurement)
                self.textfield5.text = VolumeConvert.convert_to_mililitre(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
            }
        
        }
        //converting lengths and setting it to textfields
        else if self.label3.text == "Miles" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.miles)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
                self.textfield6.text = ""
                self.textfield7.text = ""
            }
            
        }
        //converting speed and setting it to textfields
        else if self.label3.text == "miles/hour" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitSpeed.milesPerHour)
                self.textfield1.text = SpeedConvert.convert_to_metresPerSec(value: textMeasurement)
                self.textfield2.text = SpeedConvert.convert_to_kmPerHour(value: textMeasurement)
                self.textfield4.text = SpeedConvert.convert_to_knots(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield4.text = ""
            }
        }
        
    }
    
    //action for editing textfield 4
    
    @IBAction func textfield_4_edit(_ sender: UITextField) {
        
        // converting weights and setting it to textfields
        if self.label4.text == "Pounds" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitMass.pounds)
                self.textfield1.text = WeightConvert.convert_to_kg(value: textMeasurement)
                self.textfield2.text = WeightConvert.convert_to_grams(value: textMeasurement)
                self.textfield3.text = WeightConvert.convert_to_ounces(value: textMeasurement)
                self.textfield5.text = WeightConvert.convert_to_stone(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield5.text = ""
            }
        }
        //converting volume and setting it to textfields
        else if self.label4.text == "Fluid Ounce" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitVolume.fluidOunces)
                self.textfield1.text = VolumeConvert.convert_to_gallon(value: textMeasurement)
                self.textfield2.text = VolumeConvert.convert_to_litre(value: textMeasurement)
                self.textfield3.text = VolumeConvert.convert_to_pint(value: textMeasurement)
                self.textfield5.text = VolumeConvert.convert_to_mililitre(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield5.text = ""
            }
        
        }
        //converting lengths and setting it to textfields
        else if self.label4.text == "Centimetre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.centimeters)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield5.text = ""
                self.textfield6.text = ""
                self.textfield7.text = ""
            }
            
        }
        //converting speed and setting it to textfields
        else if self.label4.text == "knots" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitSpeed.knots)
                self.textfield1.text = SpeedConvert.convert_to_metresPerSec(value: textMeasurement)
                self.textfield2.text = SpeedConvert.convert_to_kmPerHour(value: textMeasurement)
                self.textfield3.text = SpeedConvert.convert_to_milesPerHour(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
            }
        }
        
    }
    
    //action for editing textfield 5
    
    @IBAction func textfield_5_edit(_ sender: UITextField) {
        
        // converting weights and setting it to textfields
        if self.label5.text == "Stone" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitMass.stones)
                self.textfield1.text = WeightConvert.convert_to_kg(value: textMeasurement)
                self.textfield2.text = WeightConvert.convert_to_grams(value: textMeasurement)
                self.textfield3.text = WeightConvert.convert_to_ounces(value: textMeasurement)
                self.textfield4.text = WeightConvert.convert_to_pounds(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
            }
        }
        //converting volume and setting it to textfields
        else if self.label5.text == "Mililitre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitVolume.milliliters)
                self.textfield1.text = VolumeConvert.convert_to_gallon(value: textMeasurement)
                self.textfield2.text = VolumeConvert.convert_to_litre(value: textMeasurement)
                self.textfield3.text = VolumeConvert.convert_to_pint(value: textMeasurement)
                self.textfield4.text = VolumeConvert.convert_to_fluidOunce(value: textMeasurement)
                
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
            }
        
        }
        //converting lengths and setting it to textfields
        else if self.label5.text == "Yards" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.yards)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield6.text = ""
                self.textfield7.text = ""
            }
        }
        
    }
    
    //action for editing textfield 6
    
    @IBAction func textfield_6_edit(_ sender: UITextField) {
        
        //converting lengths and setting it to textfields
        if self.label6.text == "Milimetre" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.millimeters)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield7.text = LengthConvert.convert_to_inches(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
                self.textfield7.text = ""
            }
        }
        
    }
    
    //action for editing textfield 7
    
    @IBAction func textfield_7_edit(_ sender: UITextField) {
        //converting lengths and setting it to textfields
        
        if self.label7.text == "Inches" {
            let text = sender.text ?? "0"
            do {
                let textDouble = Double(text) ?? 0
                let textMeasurement = Measurement(value: textDouble, unit: UnitLength.inches)
                self.textfield1.text = LengthConvert.convert_to_metre(value: textMeasurement)
                self.textfield2.text = LengthConvert.convert_to_kilometre(value: textMeasurement)
                self.textfield3.text = LengthConvert.convert_to_miles(value: textMeasurement)
                self.textfield4.text = LengthConvert.convert_to_centimetre(value: textMeasurement)
                self.textfield5.text = LengthConvert.convert_to_yards(value: textMeasurement)
                self.textfield6.text = LengthConvert.convert_to_milimetre(value: textMeasurement)
            
            }catch {
                self.textfield1.text = ""
                self.textfield2.text = ""
                self.textfield3.text = ""
                self.textfield4.text = ""
                self.textfield5.text = ""
                self.textfield6.text = ""
            }
        }
        
    }
    
    //action for saving the data
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        //constant for userdefaults
        
        let defaults = UserDefaults.standard
        
        //storing weights
        if self.label1.text == "Kilogram"{
            //creating a dictionary to store the values
            let dict = [self.label1.text:self.textfield1.text, self.label2.text:self.textfield2.text, self.label3.text: self.textfield3.text, self.label4.text: self.textfield4.text, self.label5.text:self.textfield5.text]
            if defaults.object(forKey: "weight1") == nil {
                defaults.set(dict, forKey: "weight1")
            }else if defaults.object(forKey: "weight2") == nil {
                defaults.set(dict, forKey: "weight2")
            }else if defaults.object(forKey: "weight3") == nil {
                defaults.set(dict, forKey: "weight3")
            }else if defaults.object(forKey: "weight4") == nil {
                defaults.set(dict, forKey: "weight4")
            }else if defaults.object(forKey: "weight5") == nil {
                defaults.set(dict, forKey: "weight5")
            }else {
                defaults.set(defaults.dictionary(forKey: "weight2"), forKey: "weight1")
                defaults.set(defaults.dictionary(forKey: "weight3"), forKey: "weight2")
                defaults.set(defaults.dictionary(forKey: "weight4"), forKey: "weight3")
                defaults.set(defaults.dictionary(forKey: "weight5"), forKey: "weight4")
                defaults.set(dict, forKey: "weight5")
                
            }
        
        }
        //storing temperatures
        else if self.label1.text == "Celsius"{
            //creating a dictionary to store the values
            let dict = [self.label1.text:self.textfield1.text, self.label2.text:self.textfield2.text, self.label3.text: self.textfield3.text]
            if defaults.object(forKey: "temperature1") == nil {
                defaults.set(dict, forKey: "temperature1")
            }else if defaults.object(forKey: "temperature2") == nil {
                defaults.set(dict, forKey: "temperature2")
            }else if defaults.object(forKey: "temperature3") == nil {
                defaults.set(dict, forKey: "temperature3")
            }else if defaults.object(forKey: "temperature4") == nil {
                defaults.set(dict, forKey: "temperature4")
            }else if defaults.object(forKey: "temperature5") == nil {
                defaults.set(dict, forKey: "temperature5")
            }else {
                defaults.set(defaults.dictionary(forKey: "temperature2"), forKey: "temperature1")
                defaults.set(defaults.dictionary(forKey: "temperature3"), forKey: "temperature2")
                defaults.set(defaults.dictionary(forKey: "temperature4"), forKey: "temperature3")
                defaults.set(defaults.dictionary(forKey: "temperature5"), forKey: "temperature4")
                defaults.set(dict, forKey: "temperature5")
                
            }
            
        }
        //storing volume
        else if self.label1.text == "Gallon"{
            //creating a dictionary to store the values
            let dict = [self.label1.text:self.textfield1.text, self.label2.text:self.textfield2.text, self.label3.text: self.textfield3.text, self.label4.text: self.textfield4.text, self.label5.text:self.textfield5.text]
            if defaults.object(forKey: "volume1") == nil {
                defaults.set(dict, forKey: "volume1")
            }else if defaults.object(forKey: "volume2") == nil {
                defaults.set(dict, forKey: "volume2")
            }else if defaults.object(forKey: "volume3") == nil {
                defaults.set(dict, forKey: "volume3")
            }else if defaults.object(forKey: "volume4") == nil {
                defaults.set(dict, forKey: "volume4")
            }else if defaults.object(forKey: "volume5") == nil {
                defaults.set(dict, forKey: "volume5")
            }else {
                defaults.set(defaults.dictionary(forKey: "volume2"), forKey: "volume1")
                defaults.set(defaults.dictionary(forKey: "volume3"), forKey: "volume2")
                defaults.set(defaults.dictionary(forKey: "volume4"), forKey: "volume3")
                defaults.set(defaults.dictionary(forKey: "volume5"), forKey: "volume4")
                defaults.set(dict, forKey: "volume5")
                
            }
        }
        //storing lengths
        else if self.label1.text == "Metre"{
            //creating a dictionary to store the values
            let dict = [self.label1.text:self.textfield1.text, self.label2.text:self.textfield2.text, self.label3.text: self.textfield3.text, self.label4.text: self.textfield4.text, self.label5.text:self.textfield5.text, self.label6.text:self.textfield6.text, self.label7.text:self.textfield7.text]
            if defaults.object(forKey: "length1") == nil {
                defaults.set(dict, forKey: "length1")
            }else if defaults.object(forKey: "length2") == nil {
                defaults.set(dict, forKey: "length2")
            }else if defaults.object(forKey: "length3") == nil {
                defaults.set(dict, forKey: "length3")
            }else if defaults.object(forKey: "length4") == nil {
                defaults.set(dict, forKey: "length4")
            }else if defaults.object(forKey: "length5") == nil {
                defaults.set(dict, forKey: "length5")
            }else {
                defaults.set(defaults.dictionary(forKey: "length2"), forKey: "length1")
                defaults.set(defaults.dictionary(forKey: "length3"), forKey: "length2")
                defaults.set(defaults.dictionary(forKey: "length4"), forKey: "length3")
                defaults.set(defaults.dictionary(forKey: "length5"), forKey: "length4")
                defaults.set(dict, forKey: "length5")
                
            }
            
        }
        //storing speed values
        else if self.label1.text == "Metres/sec"{
            //creating a dictionary to store the values
            let dict = [self.label1.text:self.textfield1.text, self.label2.text:self.textfield2.text, self.label3.text: self.textfield3.text, self.label4.text: self.textfield4.text]
            if defaults.object(forKey: "speed1") == nil {
                defaults.set(dict, forKey: "speed1")
            }else if defaults.object(forKey: "speed2") == nil {
                defaults.set(dict, forKey: "speed2")
            }else if defaults.object(forKey: "speed3") == nil {
                defaults.set(dict, forKey: "speed3")
            }else if defaults.object(forKey: "speed4") == nil {
                defaults.set(dict, forKey: "speed4")
            }else if defaults.object(forKey: "speed5") == nil {
                defaults.set(dict, forKey: "speed5")
            }else {
                defaults.set(defaults.dictionary(forKey: "speed2"), forKey: "speed1")
                defaults.set(defaults.dictionary(forKey: "speed3"), forKey: "speed2")
                defaults.set(defaults.dictionary(forKey: "speed4"), forKey: "speed3")
                defaults.set(defaults.dictionary(forKey: "speed5"), forKey: "speed4")
                defaults.set(dict, forKey: "speed5")
                
            }
        }
    
        
    }
    
    
    
}













