//
//  LengthConvert.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 14/03/2021.
//

import Foundation



class LengthConvert{
    
    // function to convert lengths to metre
    static func convert_to_metre(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.meters)
        let metres = String(format: decimal, convertedLength.value)
        return metres + " m"
    }
    // function to convert lengths to kilometre
    static func convert_to_kilometre(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.kilometers)
        let kilometres = String(format: decimal, convertedLength.value)
        return kilometres + " km"
    }
    // function to convert lengths to miles
    static func convert_to_miles(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.miles)
        let miles = String(format: decimal, convertedLength.value)
        return miles + " mi"
    }
    // function to convert lengths to centimetre
    static func convert_to_centimetre(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.centimeters)
        let centimetres = String(format: decimal, convertedLength.value)
        return centimetres + " cm"
    }
    // function to convert lengths to yards
    static func convert_to_yards(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.yards)
        let yards = String(format: decimal, convertedLength.value)
        return yards + " yd"
    }
    // function to convert lengths to milimetre
    static func convert_to_milimetre(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.millimeters)
        let milimetres = String(format: decimal, convertedLength.value)
        return milimetres + " ml"
    }
    // function to convert lengths to inches
    static func convert_to_inches(value length: Measurement<UnitLength>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedLength = length.converted(to: UnitLength.inches)
        let inches = String(format: decimal, convertedLength.value)
        return inches + " in"
    }
    
}
