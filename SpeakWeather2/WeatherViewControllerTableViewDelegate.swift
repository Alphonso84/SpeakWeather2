//
//  WeatherViewControllerTableViewDelegate.swift
//  SpeakWeather2
//
//  Created by Alphonso Sensley II on 6/18/22.
//  Copyright © 2022 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

extension WeatherViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! WeatherTableViewCell
        
        if wasSwitched {
            cell.timeLabel?.text = daysOfTheWeekArray[indexPath.row]
            cell.temp?.text = "54"
        } else {
            cell.timeLabel?.text = timeOfDayArray[indexPath.row]
            cell.temp?.text = "74"
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = CGFloat(60)
        
        return tableView.rowHeight
    }
    
}
