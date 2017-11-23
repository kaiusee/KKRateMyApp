//
//  KKRateMyApp.swift
//  KKRateMyApp
//
//  Created by Kais K. on 11/7/17.
//  Copyright © 2017 @Kaiusee. All rights reserved.
//

import UIKit
import StoreKit

class KKRateMyApp {
    
    static let sharedInstance = KKRateMyApp()
    var numberOfTimesBeforePrompts: Int = 5
    private let userDefaultsKey = "kkRateAppUsageCount"

    func rateApp() {
        
        var usageCount: Int = UserDefaults.standard.integer(forKey: userDefaultsKey)
        if usageCount > 0 {
            usageCount += 1
            UserDefaults.standard.set(usageCount, forKey: userDefaultsKey)
            if usageCount == self.numberOfTimesBeforePrompts {
                SKStoreReviewController.requestReview()
            }
        }
        else {
            UserDefaults.standard.set(1, forKey: userDefaultsKey)
        }
    }
}

