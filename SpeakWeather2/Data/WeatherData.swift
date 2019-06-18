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
    
    
    //USED FOR LOCATION BASED CALL
    func buildURL() -> URL {
        //API KEY REMOVED
        let urlString = "\(base)\(apiKey)\(location)"
        location = "\(latitude[0]),\(longitude[0])"
        let url = URL(string: urlString)
        return url!
    }
    
    public func getSelectedWeatherForecast() {
        
        let unwrappedURL = buildURL()
        print(unwrappedURL)
        
        let session = URLSession.shared
        let task = session.dataTask(with: unwrappedURL) { data, response, error in
            print("Start")
            
            guard let unwrappedData = data else {return}
            do {
                
                
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: .allowFragments ) as! [String:AnyObject]
                
                let currentWeather = jsonData["currently"] as? [String : AnyObject]
                
                let dailyWeather = jsonData["daily"] as? [String : AnyObject]
                
                let minutelyWeather = jsonData["minutely"] as? [String:AnyObject]
                
//                nextHour = minutelyWeather!["summary"] as! String
//                weekForecast = (dailyWeather!["data"] as? [[String:AnyObject]])!
//                
//                now = Currently(apparentTemperature: currentWeather?["apparentTemperature"] as? Double, cloudCover: currentWeather?["cloudCover"] as? Double, dewPoint: currentWeather?["dewPoint"] as? Double, humidity: currentWeather?["humidity"] as? Double, icon: currentWeather?["icon"] as? String, nearestStormBearing: currentWeather!["nearestStormBearing"] as? Int, nearestStormDistance: currentWeather?["nearestStormDistance"] as? Int, ozone: currentWeather?["ozone"] as? Double, precipIntensity: currentWeather?["precipIntensity"] as? Int, precipProbability: currentWeather?["precipProbability"] as? Int, pressure: currentWeather?["pressure"] as? Double, summary: currentWeather?["summary"] as? String, temperature: (currentWeather!["temperature"] as! Double), time: currentWeather?["time"] as? Int, uvIndex: currentWeather?["uvIndex"] as? Int, visibility: currentWeather?["visibility"] as? Int, windBearing: currentWeather?["windBearing"] as? Int, windGust: currentWeather?["windGust"] as? Double, windSpeed: currentWeather?["windSpeed"] as? Double)
//                
//                week = Day(summary: weekForecast[0]["summary"] as? String, chanceOfRain: weekForecast[0]["precipProbability"] as? Double, HighTemp: weekForecast[0]["temperatureMax"] as? Double, LowTemp: weekForecast[0]["temperatureMin"] as? Double)
                //PRINT DIFFERENT OUTPUTS HERE
                // print(Date().dayOfWeek()!)
                
                // print(now!)
                
            } catch {
                print(error)
            }
        }
        
        task.resume()
        
    }
    
}
