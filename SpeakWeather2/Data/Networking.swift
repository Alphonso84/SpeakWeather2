//
//  WeatherData.swift
//  SpeakWeather2
//
//  Created by user on 6/14/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MapKit
import WeatherKit

class Networking {
    //TODO: Update to use WeatherKit
    let apiKey = "8a0189f3ea88f1c0c56e4845fdf28200/"
    let base = "https://api.darksky.net/forecast/"
    var location = ""
    var selectedLocation = "\(37.8044),\(-122.2712)"
    var selectedUrlString : String {
        "\(base)\(apiKey)\(selectedLocation)"
    }
    
    public func networkCheck() {
      
     }
    
    //USED FOR LOCATION BASED CALL
    public func buildSelectedURL() -> URL {
        let url = URL(string: selectedUrlString)
        return url!
    }
    
    public func getSelectedWeatherForecast() {
        
        let unwrappedURL = ""
        print(unwrappedURL)
        
        let session = URLSession.shared
    
        let task = session.dataTask(with: buildSelectedURL()) { data, response, error in
            print("Start")
            
            guard let unwrappedData = data else {return}
            do {
                
//                let jsonDecoder = JSONDecoder()
//                let jsonData = try jsonDecoder.decode(Array<WeatherForecast>.self, from: unwrappedData)
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: .allowFragments ) as! [String:AnyObject]
                
               // print(jsonData)
                let weatherData = jsonData["currently"]
                let dailyWeather = jsonData["daily"] as? [String : AnyObject]
                let hourlyWeather = jsonData["hourly"]
                let minutelyWeather = jsonData["minutely"] as? [String:AnyObject]
                print(weatherData!)
            } catch {
                print(error)
            }
        }
        
        task.resume()
        
    }
    
}
