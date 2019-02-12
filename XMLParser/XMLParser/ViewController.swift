//
//  ViewController.swift
//  XMLParser
//
//  Created by minjun.ha on 10/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

struct Weather : Decodable {
    let country:String
    let weather:String
    let temperature:String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [Weather]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let jsonURLString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/swift4weather.json"
        guard let jsonURL = URL(string:jsonURLString) else {return}
        URLSession.shared.dataTask(with: jsonURL, completionHandler: {(data,response,error) -> Void in
            guard let data = data else {return}
            
            do{
                self.datalist = try JSONDecoder().decode([Weather].self, from: data)
                
                DispatchQueue.main.async(execute: {
                    self.tableView.reloadData()
                })
            }catch{
                print("Parsing error \(error)")
            }
        }).resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherCell
        
        let dicTemp = datalist[indexPath.row]
        
        let weatherStr = dicTemp.weather
        cell.countryLabel.text = dicTemp.country
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = dicTemp.temperature
        if weatherStr == "맑음" {
        
        }
        return cell
    }
}

