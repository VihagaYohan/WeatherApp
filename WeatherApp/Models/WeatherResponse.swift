//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Yohan on 2024-10-15.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
