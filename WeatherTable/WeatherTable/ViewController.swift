//
//  ViewController.swift
//  WeatherTable
//
//  Created by minjun.ha on 09/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var datalist = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dic1 = ["지역":"힌국", "날씨":"비"]
        let dic2 = ["지역":"일본", "날씨":"맑음"]
        let dic3 = ["지역":"중국", "날씨":"눈"]
        let dic4 = ["지역":"스페인", "날씨":"우박"]
        let dic5 = ["지역":"미국", "날씨":"흐림"]
        let dic6 = ["지역":"프랑스", "날씨":"비"]
        let dic7 = ["지역":"헝가리", "날씨":"비"]
        let dic8 = ["지역":"필리핀", "날씨":"비"]
        let dic9 = ["지역":"이탈리아", "날씨":"비"]
        let dic10 = ["지역":"벨기에", "날씨":"비"]
        let dic11 = ["지역":"핀란드", "날씨":"비"]
        let dic12 = ["지역":"이탈리아", "날씨":"비"]
        let dic13 = ["지역":"벨기에", "날씨":"비"]
        let dic14 = ["지역":"핀란드", "날씨":"비"]
        
        datalist = [dic1, dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic11,dic12,dic13,dic14]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var dicTemp = datalist[indexPath.row]
        cell.textLabel!.text = dicTemp["지역"]
        cell.detailTextLabel!.text = dicTemp["날씨"]
        
        if indexPath.row <= 7 {
            cell.imageView!.image = UIImage(named: "download.jpg")
        }
        
        return cell
    }
}

