//
//  WeightConvert.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 14/03/2021.
//

import Foundation


class WeightConvert{
    //function to convert weights to kilograms
    static func convert_to_kg(value weight: Measurement<UnitMass>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedWeight = weight.converted(to: UnitMass.kilograms)
        let kilograms = String(format: decimal, convertedWeight.value)
        return kilograms + " Kg"
    }
    //function to convert weights to grams
    static func convert_to_grams(value weight: Measurement<UnitMass>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedWeight = weight.converted(to: UnitMass.grams)
        let grams = String(format: decimal, convertedWeight.value)
        return grams + " g"
    }
    //function to convert weights to ounces
    static func convert_to_ounces(value weight: Measurement<UnitMass>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedWeight = weight.converted(to: UnitMass.ounces)
        let ounces = String(format: decimal, convertedWeight.value)
        return ounces + " oz"
    }
    //function to convert weights to pounds
    static func convert_to_pounds(value weight: Measurement<UnitMass>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedWeight = weight.converted(to: UnitMass.pounds)
        let pounds = String(format: decimal, convertedWeight.value)
        return pounds + " lb"
    }
    //function to convert weights to stone pounds
    static func convert_to_stone(value weight: Measurement<UnitMass>)-> String{

        let convertedWeight = weight.converted(to: UnitMass.stones)
        //separating the decimal part
        let decimalPart:Double = convertedWeight.value.truncatingRemainder(dividingBy: 1)
        //separating the decimal part
        let integerPart:Double = convertedWeight.value.rounded(.towardZero)
        let stones = String(format: "%.0f", integerPart)
        let stonesDecimals = Measurement(value: decimalPart, unit: UnitMass.stones)
        //converting the decimal part of stones to pounds
        let convertedPounds = stonesDecimals.converted(to: UnitMass.pounds)
        let pounds = String(format: "%.0f", convertedPounds.value)
        return stones + " st - " + pounds + " lb"
    }
    
}
