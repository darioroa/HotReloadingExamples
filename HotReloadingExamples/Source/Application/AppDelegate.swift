//
//  AppDelegate.swift
//  HotReloadingExamples
//
//  Created by Dario Roa on 25/4/22.
//  
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
#if targetEnvironment(macCatalyst)
        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/macOSInjection.bundle")!.load()
#endif
        return true
    }
}
