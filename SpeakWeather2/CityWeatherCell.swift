//
//  cityWeatherCell.swift
//  SpeakWeather2
//
//  Created by user on 3/17/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class CityWeatherCell: UICollectionViewCell {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherConditionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 20
        if #available(iOS 13.0, *) {
            layer.borderColor = UIColor.systemGray2.cgColor
            layer.shadowColor = UIColor.systemGray.cgColor
        } else {
            // Fallback on earlier versions
        }
        layer.borderWidth = 1
        layer.shadowPath = UIBezierPath(rect: layer.bounds).cgPath
        self.clipsToBounds = false
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 10)
    }
}
