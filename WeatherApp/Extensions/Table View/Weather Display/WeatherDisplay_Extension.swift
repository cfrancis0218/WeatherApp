//
//  WeatherDisplay_Extension.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func weatherTableSetup() {
        weatherTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(weatherTableView)
        
        NSLayoutConstraint.activate([
            weatherTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 450),
            weatherTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            weatherTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            weatherTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
