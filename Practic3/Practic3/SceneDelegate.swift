//
//  SceneDelegate.swift
//  Practic3
//
//  Created by Nina on 13.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let window = (scene as? UIWindowScene) else { return }
         
        let navVC = UINavigationController.init(rootViewController: VC1())
        let navVC1 = UINavigationController.init(rootViewController: VC3())
       let VC = ViewController()
        
        VC.tabBarItem.image = UIImage(systemName: "applewatch")
        VC.tabBarItem.title = "Time"
      
        navVC.tabBarItem.image = UIImage(systemName: "trash")
        navVC.tabBarItem.title = "Trash"
        
        navVC1.tabBarItem.image = UIImage(systemName: "paperplane")
        navVC1.tabBarItem.title = "Telegram"
        
        
        let tb = UITabBarController()
        tb.tabBar.backgroundColor = .black // цвет таб бара
        tb.tabBar.tintColor = .white // цвет выбранного элемента
        tb.tabBar.unselectedItemTintColor = .lightGray // цвет невыбранного элемента
        tb.setViewControllers([navVC,navVC1,VC], animated: true) // добавление экранов в таб бар
        
        let ourWindow = UIWindow(windowScene: window)
        ourWindow.rootViewController = tb
         
        self.window = ourWindow
        ourWindow.makeKeyAndVisible()
    }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }




