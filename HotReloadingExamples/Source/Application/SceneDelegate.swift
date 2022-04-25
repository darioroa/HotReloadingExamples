//
//  SceneDelegate.swift
//  HotReloadingExamples
//
//  Created by Dario Roa on 25/4/22.
//  
//

import UIKit
import Inject

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            fatalError("Expected scene of type UIWindowScene but got an unexpected type")
        }
        let injectViewController = Inject.ViewControllerHost(MainViewController())
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: injectViewController)
        window?.makeKeyAndVisible()
    }
}
