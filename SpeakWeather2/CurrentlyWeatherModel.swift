//
//  CurrentlyWeatherModel.swift
//  SpeakWeather2
//
//  Created by user on 6/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

struct Currently: Codable {
    var apparentTemperature: Double?
    var cloudCover: Double?
    var dewPoint: Double?
    var humidity: Double?
    var icon: String?
    var nearestStormBearing: Int?
    var nearestStormDistance: Int?
    var ozone: Double?
    var precipIntensity: Int?
    var precipProbability: Int?
    var pressure: Double?
    var summary: String?
    var temperature: Double?
    var time: Int?
    var uvIndex: Int?
    var visibility: Int?
    var windBearing: Int?
    var windGust: Double?
    var windSpeed: Double?
    
    init(apparentTemperature: Double?, cloudCover: Double?, dewPoint: Double?, humidity: Double?, icon: String?, nearestStormBearing: Int?, nearestStormDistance: Int?, ozone: Double?, precipIntensity: Int?, precipProbability: Int?, pressure: Double?, summary: String?, temperature: Double?, time: Int?, uvIndex: Int?, visibility: Int?, windBearing: Int?, windGust: Double?, windSpeed: Double?) {
        
        
        self.apparentTemperature = apparentTemperature
        self.cloudCover = cloudCover
        self.dewPoint = dewPoint
        self.humidity = humidity
        self.icon = icon
        self.nearestStormBearing = nearestStormBearing
        self.nearestStormDistance = nearestStormDistance
        self.ozone = ozone
        self.precipIntensity = precipIntensity
        self.precipProbability = precipProbability
        self.pressure = pressure
        self.summary = summary
        self.temperature = temperature
        self.time = time
        self.uvIndex = uvIndex
        self.visibility = visibility
        self.windBearing = windBearing
        self.windGust = windGust
        self.windSpeed = windSpeed
    }
    
}
