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

class WeatherViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    let SanFrancisco = City(name: "San Francisco", condition: "Partly Cloudy", temp: "54", image: UIImage(named: "SF")!)
    let Oakland = City(name: "Oakland", condition: "Sunny", temp: "70", image: UIImage(named: "Oakland")!)
    let Antioch = City(name: "Antioch", condition: "Sunny", temp: "76", image: UIImage(named:"Antioch")!)
    let SanLeandro = City(name: "San Leandro", condition: "Cloudy", temp: "56", image: UIImage(named: "SAN LEANDRO")!)
    let cellScaling: CGFloat = 0.6
    
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
        backgroundImageView.image = favoriteCities[indexPath.row].image
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        favoriteCities.append(SanFrancisco)
        favoriteCities.append(Oakland)
        favoriteCities.append(Antioch)
        favoriteCities.append(SanLeandro)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //collectionView.reloadData()
        
        //        let screenSize = UIScreen.main.bounds.size
        //        let cellWidth = floor(screenSize.width * cellScaling)
        //        let cellHeight = floor(screenSize.height * cellScaling)
        //        
        //        let insetX = (view.bounds.width - cellWidth) / 2.0
        //        let insetY = (view.bounds.height - cellHeight) / 2.0
        //
        //        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        //
        //        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        //        collectionView.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        collectionView.dataSource = self
    }
    
    
}

