//
//  SpaceOdyseeyTests.swift
//  SpaceOdyseeyTests
//
//  Created by Oluwatobiloba Akinrujomu on 22/09/2021.
//

import XCTest
@testable import SpaceOdyseey

class SpaceOdyseeyTests: XCTestCase {
    
    let logic = SpaceLogic()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFetchInitialWalBal() throws {
        let balance = logic.fetchWalletBalance()
        XCTAssertEqual(balance, 0)
    }
    
    func testLoadWallet() throws {
        let loadedAmount = logic.loadWallet(amount: 3000)
        XCTAssertEqual(loadedAmount, 3000)
    }
    
    
    func testTripAbujaToMoon() throws  {
        let status = logic.takeTrip(withinOrbit: true, manmadeStation: false, falconType: falconType.falcon9)
        XCTAssertEqual(status, true)
    }
    
    func testTripMoonToSpoke() throws  {
        let status = logic.takeTrip(withinOrbit: false, manmadeStation: false, falconType: falconType.falcon1)
        XCTAssertEqual(status, true)
    }
    
    func testTripMarsToISS() throws  {
        let status = logic.takeTrip(withinOrbit: false, manmadeStation: true, falconType: falconType.falcon9)
        XCTAssertEqual(status, true)
    }
    
    func testZFetchWalletBalance() throws {
        let balance = logic.fetchWalletBalance()
        XCTAssertEqual(balance, 1950)
    }
    
}
