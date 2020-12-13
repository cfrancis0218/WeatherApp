//
//  Weather_TableView_DataSource.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import Foundation
import UIKit

extension WeatherScreen: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = weatherTableView.dequeueReusableCell(withIdentifier: tableViewIdentifer, for: indexPath) as! Weather_TableView_Cell
        cell.dayLabel.text = weatherData[indexPath.row].day
        cell.degreelLabel.text = weatherData[indexPath.row].degrees
        return cell
    }
    
    
    
}
