//
//  CollectionView.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func collectionViewSetup() {
        
        let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let weatherCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
            weatherCollection.backgroundColor = .clear
            weatherCollection.showsHorizontalScrollIndicator = false
            weatherCollection.delegate = self
            weatherCollection.dataSource = self
            return weatherCollection
        }()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.register(WeatherCell.self, forCellWithReuseIdentifier: "wCell")
        
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 305),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
        ])
    }
}

