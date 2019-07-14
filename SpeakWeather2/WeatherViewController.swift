//
//  ViewController.swift
//  SpeakWeather2
//
//  Created by user on 3/17/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//  EXPERIMENTAL NOT PRODUCTION

import UIKit

struct City {
    let name: String
    let condition: String
    let temp: String
    let image: UIImage
}

var favoriteCities = [City]()

class WeatherViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var wasSwitched = false
    var Hourly = [Date]()
    var Weekly = [String]()
    var test = 1 == 1
   
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func HourOrWeek(_ sender: Any) {
        tableView.reloadData()
        wasSwitched = !wasSwitched
        print("\(wasSwitched)")
        returnTableRows()
        
    }
    
    
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let SanFrancisco = City(name: "San Francisco", condition: "Partly Cloudy", temp: "54", image: UIImage(named: "SF")!)
    let Oakland = City(name: "Oakland", condition: "Sunny", temp: "70", image: UIImage(named: "Oakland")!)
    let Antioch = City(name: "Antioch", condition: "Sunny", temp: "76", image: UIImage(named:"Antioch")!)
    let SanLeandro = City(name: "San Leandro", condition: "Cloudy", temp: "56", image: UIImage(named: "SAN LEANDRO")!)
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CityWeatherCell
        cell.cityLabel.text = favoriteCities[indexPath.row].name
        cell.weatherConditionLabel.text = favoriteCities[indexPath.row].condition
        cell.temperatureLabel.text = favoriteCities[indexPath.row].temp
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
    
    func returnTableRows() -> Int {
        
        if wasSwitched == false {
            return 5
        }else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return returnTableRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        if wasSwitched == true{
            cell.textLabel?.text = "Week"
        } else {
            cell.textLabel?.text = "Today"
        }
        return cell
    }
    
    //    func addFavoriteCity(name:String) ->City {
    //
    //        return City
    //    }
    
    override func viewWillAppear(_ animated: Bool) {
        favoriteCities.append(SanFrancisco)
        favoriteCities.append(Oakland)
        favoriteCities.append(Antioch)
        favoriteCities.append(SanLeandro)
    }
    
    
    override func viewDidLoad() {
        print(test)
        super.viewDidLoad()
        tableView.dataSource = self
        collectionView.dataSource = self
        Networking().getSelectedWeatherForecast()
    }
    
    
}

