//
//  Degrees_Label.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-09.
//

import UIKit

class Degrees_Label: UILabel {
    
    let degreeText = "-3°"

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        degreesSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        degreesSetup()
    }
    
    fileprivate func degreesSetup() {
        text = degreeText
        textColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        font = UIFont.systemFont(ofSize: 100, weight: .medium)
        textAlignment = .center
    }
}
