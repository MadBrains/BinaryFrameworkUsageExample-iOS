//
//  ViewController.swift
//  BinaryFrameworkUsageExample
//
//  Created by Alexander Khiger on 13.04.2022.
//

import UIKit
import BinaryFrameworkExample
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CarSDK.getAvailableCars { cars in
            cars.forEach { car in
                CarSDK.saveCar(car, completion: { })
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            CarSDK.getSavedCars { savedCars in
                print(savedCars)
            }
        }
        
        // Do any additional setup after loading the view.
    }


}
