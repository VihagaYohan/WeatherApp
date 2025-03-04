//
//  GeoCodingClient.swift
//  WeatherApp
//
//  Created by Yohan on 2024-10-15.
//
import Foundation

enum NetworkError: Error {
    case invalidResponse
}

struct GeoCodingClient {
    
    func coordinateByCity(_ city:String) async throws -> Location? {
        let (data, response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .coordinatesByLocationName(city)))
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        let locations = try JSONDecoder().decode([Location].self, from: data)
        return locations.first
    }
}
