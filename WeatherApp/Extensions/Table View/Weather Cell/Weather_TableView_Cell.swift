//
//  Weather_TableView_Cell.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-13.
//

import UIKit

class Weather_TableView_Cell: UITableViewCell {
    
    let tableViewIdentifer = "wTCell"

    let dayLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        return lbl
    }()
    
    let degreelLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: tableViewIdentifer)
        labelSetup()
        cellSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        labelSetup()
        cellSetup()
    }
    
    fileprivate func cellSetup() {
        backgroundColor = .clear
    }
    
    fileprivate func labelSetup() {
        contentView.addSubview(dayLabel)
        contentView.addSubview(degreelLabel)
        
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        degreelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            dayLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            dayLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            degreelLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            degreelLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            degreelLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }

}
