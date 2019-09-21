//
//  HourlyTableViewCell.swift
//  SpeakWeather2
//
//  Created by user on 6/2/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temp: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderWidth = 1
        
        if #available(iOS 13.0, *) {
            layer.borderColor = UIColor.systemGray2.cgColor
            timeLabel.textColor = .label
            temp.textColor = .label
        } else {
            // Fallback on earlier versions
        }
    }
    
}
