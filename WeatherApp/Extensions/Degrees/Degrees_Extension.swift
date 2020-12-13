//
//  Degrees_Extension.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func labelSetup() {
        
        let degreesLabel = Degrees_Label()
        
        degreesLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(degreesLabel)
        
        NSLayoutConstraint.activate([
            degreesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            degreesLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 125)
        ])
    }
}
