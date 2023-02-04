//
//  API_Helper.swift
//  MyAPI
//
//  Created by user231854 on 2/3/23.
//

import Foundation

import Foundation

enum API_Errors: Error{
    case unableToConvertURL
    case INVALID_URL
    case nilData
    case CannotParseJSONData
}
enum ApI_Response{
    case success(Any)
    case failure(Error)
    
}
class API_Helper {
    
  
    //Fetch disney data with the help of https://api.disneyapi.dev/characters
    static func fetchDisneyData() async throws -> Any {
        var urlString = "https://api.disneyapi.dev/characters"
        guard
            let url = URL(string: urlString)
        else{ throw API_Errors.unableToConvertURL}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        let results = try JSONSerialization.jsonObject(with: data,
        options: [])
        
        return results
    }
    
    //Fetch Spacex latest data with the help of https://api.spacexdata.com/v5/launches/latest/
    static func fetchSpacexData() async throws -> Any {
        var urlString = "https://api.spacexdata.com/v5/launches/latest/"
        guard
            let url = URL(string: urlString)
        else{ throw API_Errors.unableToConvertURL}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        let results = try JSONSerialization.jsonObject(with: data,
        options: [])
        
        return results
    }
    
    //Fetch data of nobel prize winner in the year 1901 with the help of https://api.nobelprize.org/2.1/nobelPrizes
    static func fetchNobelPrizeData() async throws -> Any {
        var urlString = "https://api.nobelprize.org/2.1/nobelPrizes"
        guard
            let url = URL(string: urlString)
        else{ throw API_Errors.unableToConvertURL}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        let results = try JSONSerialization.jsonObject(with: data,
        options: [])
        
        return results
    }
 
}
