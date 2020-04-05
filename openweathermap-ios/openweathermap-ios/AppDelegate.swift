//
//  AppDelegate.swift
//  openweathermap-ios
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initViewWithoutStoryboard()
        return true
    }
    
    private func initViewWithoutStoryboard(){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MapViewController()
        window?.makeKeyAndVisible()
    }
}
