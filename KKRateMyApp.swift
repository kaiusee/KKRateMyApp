//
//  KKRateMyApp.swift
//  KKRateMyApp
//
//  Created by Kais K. on 11/7/17.
//  Copyright © 2017 @Kaiusee. All rights reserved.
//

import UIKit

class KKRateMyApp {

    static let sharedInstance = KKRateMyApp()
    
    var appName: String = ""
    var appId: String = ""
    var numberOfTimesBeforePrompts: Int = 0
    
    func rateApp() {

        if appName == "" {
            print("Error: App Name needs to be set")
            return
        }
        
        if appId == "" {
            print("Error: App ID needs to be set")
            return
        }
        
        if numberOfTimesBeforePrompts == 0 {
            print("Error: NumberOfTimesBeforePrompts needs to be set")
            return
        }
        
        let userDefaultsKey = "kkRateAppUsageCount"
        
        var usageCount: Int = UserDefaults.standard.integer(forKey: userDefaultsKey)
        if usageCount > 0 {
            usageCount += 1
            UserDefaults.standard.set(usageCount, forKey: userDefaultsKey)
            if usageCount == self.numberOfTimesBeforePrompts {
                
                let alertController = UIAlertController(title: "Rate \(self.appName)", message: "If you enjoy using \(self.appName), would you mind taking a moment to rate it?\nThanks for your support!", preferredStyle: .alert)
                
                let OKAction = UIAlertAction(title: "Sure!", style: .default) { action in
                    if let appStoreURL = URL(string: "itms-apps://itunes.apple.com/app/id\(self.appId)") {
                        UIApplication.shared.open(appStoreURL)
                    }
                }
                
                let cancelAction = UIAlertAction(title: "No, Thanks!", style: .cancel)
                alertController.addAction(cancelAction)
                
                alertController.addAction(OKAction)
                UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true)
            }
        }
        else {
            UserDefaults.standard.set(1, forKey: userDefaultsKey)
        }
    }
}
