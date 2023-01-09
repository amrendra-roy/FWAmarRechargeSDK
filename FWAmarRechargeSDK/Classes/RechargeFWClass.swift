//
//  RechargeFWClass.swift
//  FWAmarRechargeSDK
//
//  Created by Amrendra on 08/01/23.
//

import Foundation

public class RechargeFWClass {
    
    public init() {}
    
    public func doRecharge(for serviceName: String = "Uknown") {
        print("Hello to \(serviceName)")
    }
    
    public func doRechargeByUsingHelperPrivateMethod() {
        sayHelloPrivate(to: "PrivateAirTel")
    }
    
    // This method should not allow from Sample App, but can access from intenal func doRechargeByUsingHelperPrivateMethod
    func sayHelloPrivate(to serviceName: String) {
        print("Hello to \(serviceName)")
    }
    
    
    
    
    
}
