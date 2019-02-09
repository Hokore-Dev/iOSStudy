//
//  DetailViewController.swift
//  CustomCell
//
//  Created by minjun.ha on 09/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detaildata = [String:String]()
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        
        nameLabel.text = detaildata["name"]
        amountLabel.text = detaildata["amount"]
        valueLabel.text = detaildata["value"]
        
        imgView.image = UIImage(named: detaildata["image"]!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
