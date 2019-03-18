//
//  cityWeatherCell.swift
//  SpeakWeather2
//
//  Created by user on 3/17/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class CityWeatherCell:UICollectionViewCell {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherConditionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 20
        self.clipsToBounds = false
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.85
        layer.shadowOffset = CGSize(width: 5, height: 10)
    }
}
