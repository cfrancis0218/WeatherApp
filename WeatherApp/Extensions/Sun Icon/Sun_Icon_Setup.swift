//
//  Sun_Icon_Setup.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func sunIconSetup() {
        
        let sunIcon = Sun_Icon(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        sunIcon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sunIcon)
        
        NSLayoutConstraint.activate([
            
            sunIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            sunIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
    }
}
