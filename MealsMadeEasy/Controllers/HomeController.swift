//
//  HomeController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 1/26/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit
import M13Checkbox
import Firebase

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let checkbox = M13Checkbox(frame: CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0))
        view.addSubview(checkbox)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func Signout(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
            let loginView = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let appDelegate = UIApplication.shared.delegate
            appDelegate?.window??.rootViewController = loginView
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}
