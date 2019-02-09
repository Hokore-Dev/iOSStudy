//
//  ViewController.swift
//  CustomCell
//
//  Created by minjun.ha on 09/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    var itemlist = [[String:String]]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item2 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item3 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item4 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item5 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item6 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item7 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item8 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item9 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item10 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        let item11 = ["name":"사과", "image":"download.jpg", "amount":"6", "value":"3000원"]
        
        itemlist = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10,
        item11]
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemlist.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let controller = (segue.destination as! DetailViewController)
            controller.detaildata = itemlist[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for :indexPath) as! CustomTableViewCell
        
        let dicTemp = itemlist[indexPath.row]
        
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        cell.cellImage.image = UIImage(named: dicTemp["image"]!)
        
        return cell
    }


}

