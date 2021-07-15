//
//  SpeedConvert.swift
//  Unit_Converter_App
//
//  Created by Sameer Rokade on 14/03/2021.
//

import Foundation



class SpeedConvert{
    
    // function to convert speeds to metres per second
    static func convert_to_metresPerSec(value speed: Measurement<UnitSpeed>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
            let convertedSpeed = speed.converted(to: UnitSpeed.metersPerSecond)
            let metresPerSec = String(format: decimal, convertedSpeed.value)
            return metresPerSec + " m/s"
    }
    // function to convert speeds to kilometres per hour
    static func convert_to_kmPerHour(value speed: Measurement<UnitSpeed>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
        let convertedSpeed = speed.converted(to: UnitSpeed.kilometersPerHour)
            let kmPerHour = String(format: decimal, convertedSpeed.value)
            return kmPerHour + " km/hr"
    }
    // function to convert speeds to miles per hour
    static func convert_to_milesPerHour(value speed: Measurement<UnitSpeed>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
            let convertedSpeed = speed.converted(to: UnitSpeed.milesPerHour)
            let milesPerHour = String(format: decimal, convertedSpeed.value)
            return milesPerHour + " mi/hr"
    }
    // function to convert speeds to knots
    static func convert_to_knots(value speed: Measurement<UnitSpeed>)-> String{
        let decimal = UserDefaults.standard.string(forKey: "decimal")!
            let convertedSpeed = speed.converted(to: UnitSpeed.knots)
            let knots = String(format: decimal, convertedSpeed.value)
            return knots + " kt"
    }
}
