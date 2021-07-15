//
//  HistoryDetailsViewController.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 15/03/2021.
//

import UIKit

class HistoryDetailsViewController: UIViewController {

    // declaring variables and outlets
    var data = String()
    var conversionName: String?
    @IBOutlet weak var conversionTitle: UILabel!
    @IBOutlet weak var dataDisplay: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.conversionTitle.text = conversionName
        self.dataDisplay.isEditable = false
        self.dataDisplay.text = ""

        //using function according to the label text
        if self.conversionTitle.text == "Weight"{
            displayWeight()
        }else if self.conversionTitle.text == "Temperature"{
            displayTemperature()
        }else if self.conversionTitle.text == "Volume"{
            displayVolume()
        }else if self.conversionTitle.text == "Length"{
            displayLength()
        }else if self.conversionTitle.text == "Speed"{
            displaySpeed()
        }
        // Do any additional setup after loading the view.
    }
    
    // function to display weight conversions
    func displayWeight(){
        let defaults = UserDefaults.standard
        
        data = String()
        let weight1 = defaults.dictionary(forKey: "weight1")
        let weight2 = defaults.dictionary(forKey: "weight2")
        let weight3 = defaults.dictionary(forKey: "weight3")
        let weight4 = defaults.dictionary(forKey: "weight4")
        let weight5 = defaults.dictionary(forKey: "weight5")
        
        //using keys and values to get the data from stored dictionaries
        if weight1 != nil {
            for (keys, values) in weight1!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if weight2 != nil {
            for (keys, values) in weight2!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if weight3 != nil {
            
            for (keys, values) in weight3!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if weight4 != nil {
            for (keys, values) in weight4!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if weight5 != nil {
            for (keys, values) in weight5!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        
        //setting data to the textview
        self.dataDisplay.text = data

        
    }
    
    //function to display temperature conversions
    func displayTemperature() {
        data = String()
        let defaults = UserDefaults.standard
        
        let temperature1 = defaults.dictionary(forKey: "temperature1")
        let temperature2 = defaults.dictionary(forKey: "temperature2")
        let temperature3 = defaults.dictionary(forKey: "temperature3")
        let temperature4 = defaults.dictionary(forKey: "temperature4")
        let temperature5 = defaults.dictionary(forKey: "temperature5")
        
        //using keys and values to get the data from stored dictionaries
        if temperature1 != nil {
            for (keys, values) in temperature1!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if temperature2 != nil {
            for (keys, values) in temperature2!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if temperature3 != nil {
            
            for (keys, values) in temperature3!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if temperature4 != nil {
            for (keys, values) in temperature4!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if temperature5 != nil {
            for (keys, values) in temperature5!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        
        //setting data to the textview
        self.dataDisplay.text = data
    }
    
    //function to display volume conversions
    func displayVolume()  {
        data = String()
        let defaults = UserDefaults.standard
        
        let volume1 = defaults.dictionary(forKey: "volume1")
        let volume2 = defaults.dictionary(forKey: "volume2")
        let volume3 = defaults.dictionary(forKey: "volume3")
        let volume4 = defaults.dictionary(forKey: "volume4")
        let volume5 = defaults.dictionary(forKey: "volume5")
        
        //using keys and values to get the data from stored dictionaries
        if volume1 != nil {
            for (keys, values) in volume1!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if volume2 != nil {
            for (keys, values) in volume2!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if volume3 != nil {
            
            for (keys, values) in volume3!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if volume4 != nil {
            for (keys, values) in volume4!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if volume5 != nil {
            for (keys, values) in volume5!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        
        //setting data to the textview
        self.dataDisplay.text = data
        
    
    }
    
    //function to display length conversions
    func displayLength()  {
        data = String()
        let defaults = UserDefaults.standard
        
        let length1 = defaults.dictionary(forKey: "length1")
        let length2 = defaults.dictionary(forKey: "length2")
        let length3 = defaults.dictionary(forKey: "length3")
        let length4 = defaults.dictionary(forKey: "length4")
        let length5 = defaults.dictionary(forKey: "length5")
        
        //using keys and values to get the data from stored dictionaries
        if length1 != nil {
            for (keys, values) in length1!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if length2 != nil {
            for (keys, values) in length2!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if length3 != nil {
            
            for (keys, values) in length3!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if length4 != nil {
            for (keys, values) in length4!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if length5 != nil {
            for (keys, values) in length5!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        
        //setting data to the textview
        self.dataDisplay.text = data
        
    }
    
    //function to display speed conversions
    func displaySpeed()  {
        data = String()
        let defaults = UserDefaults.standard
        
        let speed1 = defaults.dictionary(forKey: "speed1")
        let speed2 = defaults.dictionary(forKey: "speed2")
        let speed3 = defaults.dictionary(forKey: "speed3")
        let speed4 = defaults.dictionary(forKey: "speed4")
        let speed5 = defaults.dictionary(forKey: "speed5")
        
        //using keys and values to get the data from stored dictionaries
        if speed1 != nil {
            for (keys, values) in speed1!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if speed2 != nil {
            for (keys, values) in speed2!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if speed3 != nil {
            
            for (keys, values) in speed3!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if speed4 != nil {
            for (keys, values) in speed4!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        if speed5 != nil {
            for (keys, values) in speed5!{
                
                data.append("\(keys): \(values)\n")
            }
            data.append("\n\n")
        }
        
        //setting data to the textview
        self.dataDisplay.text = data
    }
    
    
    


}
