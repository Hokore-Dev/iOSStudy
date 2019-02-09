//
//  ViewController.swift
//  SelectCar
//
//  Created by minjun.ha on 09/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgView: UIImageView!
    
    let carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    var carModel = [String]()
    var carModelImage = [String]()
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador", "veneno", "huracan"]
    let porsche = ["911", "boxter"]
    
    let teslaImageNames = ["1.jpg", "2.jpg", "3.jpg"]
    let lamborghiniImageNames = ["4.jpg", "5.jpg", "6.jpg"]
    let porscheImageNames = ["1.jpg", "2.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carModel = tesla
        carModelImage = teslaImageNames
        
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        }
        else {
            return carModel.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        }else {
            return carModel[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = teslaImageNames
        } else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
        } else if component == 0 && row == 2{
            carModel = porsche
            carModelImage = porscheImageNames
        }
        
        imgView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])
        pickerView.reloadAllComponents()
    }
}
