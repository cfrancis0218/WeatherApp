//
//  Collection_Flow_Layout.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-13.
//

import Foundation
import UIKit

extension WeatherScreen: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let weatherCell = WeatherCell()
        return CGSize(width: weatherCell.frame.size.width / 0.7, height: weatherCell.frame.size.width / 0.7)
    }
}
