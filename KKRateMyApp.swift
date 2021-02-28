//
//  KKRateMyApp.swift
//  KKRateMyApp
//
//  Created by Kais K. on 11/7/17.
//  Updated by Kais K. on 02/27/21.
//  Copyright © 2017 @Kaiusee. All rights reserved.
//

import UIKit
import StoreKit

class KKRateMyApp {
    
    static let shared = KKRateMyApp()
    private let userDefaultsKey = "kkRateAppUsageCount"
    
    func rateApp(numberOfTimesBeforePromptingTheUser: Int?) {
        
        var usageCount: Int = UserDefaults.standard.integer(forKey: userDefaultsKey)
        if usageCount > 0 {
            usageCount += 1
            UserDefaults.standard.set(usageCount, forKey: userDefaultsKey)
            if usageCount == numberOfTimesBeforePromptingTheUser ?? 5 {
                
                if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    SKStoreReviewController.requestReview(in: scene)
                }

                UserDefaults.standard.set(0, forKey: userDefaultsKey)
            }
        }
        else {
            UserDefaults.standard.set(1, forKey: userDefaultsKey)
        }
    }
    
    func requestReviewNow() {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            SKStoreReviewController.requestReview(in: scene)
        }
    }
}
