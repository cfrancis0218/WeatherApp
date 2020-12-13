//
//  Sun_Icon.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import UIKit

class Sun_Icon: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sunIcon_Setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sunIcon_Setup()
    }
    
    fileprivate func sunIcon_Setup() {
        
        image = UIImage(systemName: "cloud.snow.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 38, weight: .medium))
        tintColor = .systemYellow
        frame = CGRect(x: 0, y: 0, width: 60, height: 60)
    }
}
