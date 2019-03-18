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
}

var favoriteCities = [City]()

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let SanFrancisco = City(name: "San Francisco", condition: "Partly Cloudy", temp: "54")
    let Oakland = City(name: "Oakland", condition: "Sunny", temp: "70")
    let Antioch = City(name: "Antioch", condition: "Sunny", temp: "76")
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CityWeatherCell
        cell.cityLabel.text = favoriteCities[indexPath.row].name
        cell.weatherConditionLabel.text = favoriteCities[indexPath.row].condition
        cell.temperatureLabel.text = favoriteCities[indexPath.row].temp
        cell.layer.cornerRadius = 25
        
        return cell
        
    }
    //Trying to create method to dynamically make cell centered in collectionView
    //   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    
    //    let totalCellWidth = CellWidth * CellCount
    //    let totalSpacingWidth = CellSpacing * (CellCount - 1)
    //
    //    let leftInset = (collectionViewWidth - CGFloat(totalCellWidth + totalSpacingWidth)) / 2
    //    let rightInset = leftInset
    //
    //    return UIEdgeInsetsMake(0, leftInset, 0, rightInset)
    //    }
    
    override func viewWillAppear(_ animated: Bool) {
        favoriteCities.append(SanFrancisco)
        favoriteCities.append(Oakland)
        favoriteCities.append(Antioch)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
    }
    
    
}

