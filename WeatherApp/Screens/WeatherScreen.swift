//
//  ViewController.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import UIKit

class WeatherScreen: UIViewController {
    
    let tableViewIdentifer = "wTCell"
    let collectionViewIdentifer = "wCell"
    
    let circleShapeLayer = CAShapeLayer()
    
    var weatherData = [
        Weather(day: "Monday", image: UIImage(systemName: "cloud.snow.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-8°"),
        Weather(day: "Tuesday", image: UIImage(systemName: "sun.min.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-1°"),
        Weather(day: "Wednesday", image: UIImage(systemName: "cloud.drizzle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-2°"),
        Weather(day: "Thursday", image: UIImage(systemName: "sun.max.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-6°"),
        Weather(day: "Friday", image: UIImage(systemName: "cloud.hail.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-4°"),
        Weather(day: "Saturday", image: UIImage(systemName: "cloud.sleet.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-1°"),
        Weather(day: "Sunday", image: UIImage(systemName: "smoke.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 10, weight: .medium))!, degrees: "-7°"),
    ]
    
    let weatherTableView = WeatherDisplay_TableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientView()
        navigationSetup()
        sunIconSetup()
        progressCircle()
        labelSetup()
        weatherTableSetup()
        collectionViewSetup()
        cellRegistry()
    }


}

