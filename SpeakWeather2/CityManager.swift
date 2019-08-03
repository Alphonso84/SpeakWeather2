//
//  CityManager.swift
//  SpeakWeather2
//
//  Created by user on 8/2/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

struct City {
    let name: String
    let currentCondition: String
    let temp: String
    let image: UIImage
    let icon: [UIImage?]
    let forecastedConditions: [String?]
}

class CityManager {
    public var favoriteCities = [City]()
    
    let SanFrancisco = City(name: "San Francisco", currentCondition: "Partly Cloudy", temp: "54", image: UIImage(named: "SF")!, icon: [], forecastedConditions: [])
    let Oakland = City(name: "Oakland", currentCondition: "Sunny", temp: "70", image: UIImage(named: "Oakland")!, icon: [], forecastedConditions: [])
    let Antioch = City(name: "Antioch", currentCondition: "Sunny", temp: "76", image: UIImage(named:"Antioch")!, icon: [], forecastedConditions: [])
    let SanLeandro = City(name: "San Leandro", currentCondition: "Cloudy", temp: "56", image: UIImage(named: "SAN LEANDRO")!, icon: [], forecastedConditions: [])
    
    //    func addFavoriteCity(name:String) ->City {
    //
    //        return City
    //    }
    
    init() {
        favoriteCities.append(SanFrancisco)
        favoriteCities.append(Oakland)
        favoriteCities.append(Antioch)
        favoriteCities.append(SanLeandro)
    }
    
}
