//
//  ViewController.swift
//  ConstellationExplantion
//
//  Created by minjun.ha on 10/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: (false))
    }
}

