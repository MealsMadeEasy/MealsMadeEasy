//
//  ViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 1/17/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class UseronboardingController: UIViewController {
    
    
    @IBOutlet weak var birthDate: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    func createDatePicker () {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressed))
        
        toolbar.setItems([done], animated: false)
        birthDate.inputAccessoryView = toolbar
        birthDate.inputView = picker
        
        picker.datePickerMode = .date
    }
    
    @IBAction func saveUser(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        let loginView = self.storyboard?.instantiateViewController(withIdentifier: "HomeController") as! HomeController
        let appDelegate = UIApplication.shared.delegate
        appDelegate?.window??.rootViewController = loginView
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        birthDate.text = "\(dateString)"
        self.view.endEditing(true)
    }
}


