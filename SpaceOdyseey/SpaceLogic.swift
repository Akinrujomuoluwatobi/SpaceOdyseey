//
//  SpaceLogic.swift
//  SpaceOdyseey
//
//  Created by Oluwatobiloba Akinrujomu on 22/09/2021.
//

import Foundation
class SpaceLogic {
    static var walletBalance  = 0
    let orbitToOrbitFareOnFalcon1 = 250
    let journeyWithinOrbitFareFalcon1 = 50
    let royaltyLandingOnAnyManMadeStation = 200
   
    func loadWallet(amount: Int) -> Int {
        SpaceLogic.walletBalance = SpaceLogic.walletBalance + amount
        return SpaceLogic.walletBalance
    }
    
    func takeTrip(withinOrbit: Bool, manmadeStation: Bool, falconType: falconType) -> Bool {
        var bal: Int = fetchWalletBalance()
        print(bal)
        if withinOrbit {
            let fare = getFalconFare(falconType: falconType, amount: journeyWithinOrbitFareFalcon1)
            bal = bal - fare
        } else {
            let fare = getFalconFare(falconType: falconType, amount: orbitToOrbitFareOnFalcon1)
            bal = bal - fare
        }
        
        if manmadeStation {
            bal = bal - royaltyLandingOnAnyManMadeStation
        }
        
        print(bal)
        
        if bal > 0 {
            SpaceLogic.walletBalance = bal
            return true
        }
        
        return false
        
    }
    
    func getFalconFare(falconType: falconType, amount: Int) -> Int {
        switch falconType {
        case .falcon9:
            return amount * 2
        case .falcon1:
            return amount
        }
    }
    
    func fetchWalletBalance() -> Int  {
        var bal = SpaceLogic.walletBalance
        return bal
    }
}
enum falconType {
    case falcon9
    case falcon1
}
