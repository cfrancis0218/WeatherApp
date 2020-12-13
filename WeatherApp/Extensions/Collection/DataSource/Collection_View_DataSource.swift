//
//  Collection_View_DataSource.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-13.
//

import Foundation
import UIKit

extension WeatherScreen: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let weatherCell = collectionView.dequeueReusableCell(withReuseIdentifier: "wCell", for: indexPath) as! WeatherCell
        weatherCell.imageView.image = weatherData[indexPath.row].image
        weatherCell.imageView.clipsToBounds = true
        weatherCell.imageView.contentMode = .scaleAspectFit
        return weatherCell
    }
    
    
}
