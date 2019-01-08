//
//  ViewController.swift
//  DigitalFrame
//
//  Created by minjun.ha on 08/01/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView:UIImageView!
    @IBOutlet weak var toggleButton:UIButton!
    @IBOutlet weak var speedLabel:UILabel!
    @IBOutlet weak var slider:UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = [UIImage(named: "1.jpeg")!,
                      UIImage(named: "2.jpeg")!,
                      UIImage(named: "3.jpeg")!,
                      UIImage(named: "4.jpeg")!,
                      UIImage(named: "5.jpeg")!]
        
        imgView.animationImages = images
         imgView.animationDuration = 15
        imgView.startAnimating()
        speedLabel.text = "15"
    }
    
    @IBAction func speedSliderAction(_ sender: Any){
        imgView.animationDuration = Double(slider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        speedLabel.text = "\(imgView.animationDuration)"
    }
    
    @IBAction func ToggleButton(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        } else {
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
    }
}
