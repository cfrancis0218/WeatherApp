//
//  Cell_Registry.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-13.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func cellRegistry() {
        weatherTableView.delegate = self
        weatherTableView.dataSource = self
        
        weatherTableView.register(Weather_TableView_Cell.self, forCellReuseIdentifier: "wTCell")
    }
}
