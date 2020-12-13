//
//  Gradient_Extension.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func setupGradientView() {
        
        let sky = GradientView()
        sky.startColor = UIColor(red: 0.1, green: 0.25, blue: 0.5, alpha: 1.0)
        sky.endColor = UIColor(red: 0.70, green: 0.75, blue: 0.9, alpha: 1.0)
        sky.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sky)
        
        let snow = ParticleView()
        snow.particleImage = UIImage(named: "snow-particle")
        snow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(snow)
        
        
        NSLayoutConstraint.activate([
            sky.topAnchor.constraint(equalTo: view.topAnchor),
            sky.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sky.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sky.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            snow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            snow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            snow.topAnchor.constraint(equalTo: view.topAnchor),
            snow.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
        ])
    }
}
