//
//  VolumeConvert.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 14/03/2021.
//

import Foundation



class VolumeConvert{
    
    // function to convert volumes to gallon
    static func convert_to_gallon(value volume: Measurement<UnitVolume>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedVolume = volume.converted(to: UnitVolume.gallons)
        let gallon = String(format: decimal, convertedVolume.value)
        return gallon + " gal"
    }
    // function to convert volumes to litre
    static func convert_to_litre(value volume: Measurement<UnitVolume>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedVolume = volume.converted(to: UnitVolume.liters)
        let litres = String(format: decimal, convertedVolume.value)
        return litres + " l"
    }
    // function to convert volumes to pint
    static func convert_to_pint(value volume: Measurement<UnitVolume>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedVolume = volume.converted(to: UnitVolume.pints)
        let pints = String(format: decimal, convertedVolume.value)
        return pints + " pt"
    }
    // function to convert volumes to fluid ounce
    static func convert_to_fluidOunce(value volume: Measurement<UnitVolume>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedVolume = volume.converted(to: UnitVolume.fluidOunces)
        let fluidOunces = String(format: decimal, convertedVolume.value)
        return fluidOunces + " fl oz"
    }
    // function to convert volumes to mililitre
    static func convert_to_mililitre(value volume: Measurement<UnitVolume>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedVolume = volume.converted(to: UnitVolume.milliliters)
        let mililitres = String(format: decimal, convertedVolume.value)
        return mililitres + " ml"
    }
}
