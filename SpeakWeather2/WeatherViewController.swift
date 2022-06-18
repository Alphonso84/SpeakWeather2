//
//  ViewController.swift
//  SpeakWeather2
//
//  Created by user on 3/17/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//  EXPERIMENTAL NOT PRODUCTION

import UIKit
import Foundation

class WeatherViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var indexPathObject = IndexPath()
    var wasSwitched = false
    var Hourly = [Date]()
    var Weekly = [String]()
    var test = 1 == 1
    var myCities = CityManager().favoriteCities
    var daysOfTheWeekArray = DateAndTimeManager().daysArrayLogic()
    var timeOfDayArray = DateAndTimeManager().timeOfDayArrayAssignment()
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func HourOrWeek(_ sender: Any) {
        tableView.reloadData()
        wasSwitched = !wasSwitched
        print("\(wasSwitched)")
    
    }
    
    
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
   override func viewWillAppear(_ animated: Bool) {
    DateAndTimeManager().timeOfDayArrayAssignment()
    DateAndTimeManager().daysArrayLogic()
   }
   
   
   override func viewDidLoad() {
       print(test)
       super.viewDidLoad()
       tableView.dataSource = self
       collectionView.dataSource = self
  //   Networking().getSelectedWeatherForecast()
       segmentedControl.bringSubviewToFront(self.segmentedControl)
   }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CityWeatherCell
        tableView.separatorColor = .separator
        cell.cityLabel.textColor = .label
        cell.weatherConditionLabel.textColor = .label
        cell.temperatureLabel.textColor = .label
        cell.cityLabel.text = myCities[indexPath.row].name
        cell.weatherConditionLabel.text = myCities[indexPath.row].currentCondition
        cell.temperatureLabel.text = myCities[indexPath.row].temp
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print(scrollView.contentOffset.x)
        //  Changing the backGroundImage based on where the user scrolls.
        let offset = scrollView.contentOffset.x
        
        if offset < 216.5 {
            //backgroundImageView.image = favoriteCities[0].image
        } else if offset < 433 {
            // backgroundImageView.image = favoriteCities[1].image
        } else if offset < 649.5 {
            // backgroundImageView.image = favoriteCities[2].image
        } else if offset < 866 {
            // backgroundImageView.image = favoriteCities[3].image
        } else if offset >= 866 {
            // backgroundImageView.image = favoriteCities[3].image
        }
        
    }

}

