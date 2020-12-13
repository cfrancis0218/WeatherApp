//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    required init?(coder weatherCellDecoder: NSCoder) {
        super.init(coder: weatherCellDecoder)
        weatherCellSetup()
        imageSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        weatherCellSetup()
        imageSetup()
    }
    
    fileprivate func weatherCellSetup() {
        backgroundColor = .clear
        frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        layer.cornerRadius = frame.size.height / 2
        layer.shadowColor = UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0).cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.3
    }
    
    fileprivate func imageSetup() {
        imageView.image?.withTintColor(UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0), renderingMode: .alwaysOriginal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
}
