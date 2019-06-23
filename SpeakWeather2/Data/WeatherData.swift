//
//  WeatherData.swift
//  SpeakWeather2
//
//  Created by user on 6/14/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import CoreLocation

class Networking {
    
    let apiKey = "8a0189f3ea88f1c0c56e4845fdf28200/"
    let base = "https://api.darksky.net/forecast/"
    var location = ""
    var selectedLocation = "\(37.804363),\(-121.271111)"
    
    //USED FOR LOCATION BASED CALL
    public func buildSelectedURL() -> URL {
        let selectedLocationString = "\(selectedLocation)"
        let selectedUrlString = "\(base)\(apiKey)\(selectedLocationString)"
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
                
                
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: .allowFragments ) as! [String:AnyObject]
                
                print(jsonData)
                let currentWeather = jsonData["currently"] as? [String : AnyObject]
                
                let dailyWeather = jsonData["daily"] as? [String : AnyObject]
                
                let minutelyWeather = jsonData["minutely"] as? [String:AnyObject]
                

            } catch {
                print(error)
            }
        }
        
        task.resume()
        
    }
    
}
