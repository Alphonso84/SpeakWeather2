//
//  HourlyTableViewCell.swift
//  SpeakWeather2
//
//  Created by user on 6/2/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class HourlyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var temp: UILabel!
    override func layoutSubviews() {
    }
}
