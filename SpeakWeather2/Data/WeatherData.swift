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
   // var lati
    
    //USED FOR LOCATION BASED CALL
    func buildURL(constructedUrl: String) -> URL {
        //API KEY REMOVED
        var urlString = "\(base)\(apiKey)\(location)"
   //     location = "\(latitude[0]),\(longitude[0])"
        urlString = "\(base)\(apiKey)\(location)"
        let url = URL(string: urlString)
        return url!
    }
    
}
