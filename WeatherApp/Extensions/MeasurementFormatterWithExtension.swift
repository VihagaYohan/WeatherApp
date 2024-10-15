//
//  MeasurementFormatterWithExtension.swift
//  WeatherApp
//
//  Created by Yohan on 2024-10-15.
//

import Foundation

extension MeasurementFormatter {
    
    static func temprature(value: Double) -> String {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 0
        
        let formatter = MeasurementFormatter()
        formatter.numberFormatter = numberFormatter
        
        let temp = Measurement(value: value, unit: UnitTemperature.kelvin)
        
        return formatter.string(from: temp)
    }
}
