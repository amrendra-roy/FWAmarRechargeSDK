//
//  PaymentManager.swift
//  FWAmarRechargeSDK
//
//  Created by Amrendra on 08/01/23.
//

import Foundation

public class PaymentManager {
    
    public enum EmployeeLevel {
        case Trainee (Bool) //true if trainee in provision period
        case Engineer
        case Lead
        case Manager
    }
    
    
    private var basicPay: Float = 1000.0
    private var empLevel: EmployeeLevel = .Engineer
    
    public init(with employeeLevel: EmployeeLevel) {
        self.empLevel = employeeLevel
    }
    
    public func calculatePayment() -> Float {
        switch self.empLevel {
        case .Trainee(let isProvision):
            print("trainee, is provision = \(isProvision)")
            if isProvision {
                return basicPay
            }else {
                return basicPay + 500
            }
        case .Engineer:
            print("Employee is an Engineer")
            return basicPay + 2000
        case .Lead:
            print("Employee is a Lead")
            return basicPay + 5000
        case .Manager:
            print("Employee is a Manager")
            return basicPay + 10000
        }
    }
    
    
    
}
