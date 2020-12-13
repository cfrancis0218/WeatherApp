//
//  Weather_TableView_Delegate.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import Foundation
import UIKit

extension WeatherScreen: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
