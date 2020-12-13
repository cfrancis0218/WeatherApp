//
//  WeatherDisplay+TableView.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import UIKit

class WeatherDisplay_TableView: UITableView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        weatherDisplaySetup()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        weatherDisplaySetup()
    }
    fileprivate func weatherDisplaySetup() {
        backgroundColor = .clear
        separatorColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        separatorStyle = .singleLine
    }
}
