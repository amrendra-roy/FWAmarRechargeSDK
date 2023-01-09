//
//  ViewController.swift
//  FWAmarRechargeSDK
//
//  Created by amrendra-roy on 01/08/2023.
//  Copyright (c) 2023 amrendra-roy. All rights reserved.
//

import UIKit
import FWAmarRechargeSDK

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let frameworkClassIns = RechargeFWClass()
        frameworkClassIns.doRecharge(for: "BSNL")
        frameworkClassIns.doRechargeByUsingHelperPrivateMethod()
        //frameworkClassIns.sayHelloPrivate() //Should not able to access from out side of framework
        
        // Access resources from Framework
        let frameworkBundle = Bundle(for: RechargeFWClass.self)
        if let path = frameworkBundle.path(forResource: "AmarResources", ofType: "bundle") {
            let resourceBundle = Bundle(url: URL(fileURLWithPath: path))
            let image = UIImage(named: "JyotiPhoto.png", in: resourceBundle, compatibleWith: nil)
            print("Image from FrameWork Bundle = \(image)")
            imageView.image = image
        }
        
        paymetnCardUses()
    }
    
    func paymetnCardUses() {
        let emp1 = PaymentManager(with: PaymentManager.EmployeeLevel.Trainee(true))
        print("Trainee payment in provision = \(emp1.calculatePayment()) \n")
        
        let emp5 = PaymentManager(with: PaymentManager.EmployeeLevel.Trainee(false))
        print("Trainee payment NOT in provision = \(emp5.calculatePayment()) \n")
        
        let emp2 = PaymentManager(with: .Engineer)
        print("Engineer payment is = \(emp2.calculatePayment()) \n")
        
        let emp3 = PaymentManager(with: .Lead)
        print("Lead payment = \(emp3.calculatePayment()) \n")
        
        let emp4 = PaymentManager(with: .Manager)
        print("Manager payment = \(emp4.calculatePayment()) \n")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

