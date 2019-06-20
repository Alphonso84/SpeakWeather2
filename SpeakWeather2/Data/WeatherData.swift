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
    
    let apiKey = ""
    let base = "https://api.darksky.net/forecast/"
    var location = ""
    var selectedLocation = ""
    
    //USED FOR LOCATION BASED CALL
    public func buildSelectedURL(constructedUrl: String) -> URL {
        let selectedLocationString = "\(selectedLocation)"
        selectedUrlString = "\(base)\(apiKey)\(selectedLocationString)"
        let url = URL(string: selectedUrlString)
        return url!
    }
    
    public func getSelectedWeatherForecast() {
        
        let unwrappedURL = ""
        print(unwrappedURL)
        
        let session = URLSession.shared
    
        var task = session.dataTask(with: buildURL(latitude: 37.804363, longitude: -121.271111)) { data, response, error in
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
