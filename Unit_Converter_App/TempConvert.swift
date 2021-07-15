//
//  TempConvert.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 14/03/2021.
//

import Foundation


class TempConvert{
    
    //function to convert temperatures to fahrenheit
    static func convert_to_f(value temp: Measurement<UnitTemperature>) -> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedTemp = temp.converted(to: UnitTemperature.fahrenheit)
        let fahrenheit = String(format: decimal, convertedTemp.value)
        return fahrenheit + " F"
    }
    //function to convert temperatures to celsius
    static func convert_to_c(value temp: Measurement<UnitTemperature>) -> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedTemp = temp.converted(to: UnitTemperature.celsius)
        let celsius = String(format: decimal, convertedTemp.value)
        return celsius + " C"
    }
    //function to convert temperatures to kelvin
    static func convert_to_k(value temp: Measurement<UnitTemperature>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedTemp = temp.converted(to: UnitTemperature.kelvin)
        let kelvin = String(format: decimal, convertedTemp.value)
        return kelvin + " K"
    }
    

}
