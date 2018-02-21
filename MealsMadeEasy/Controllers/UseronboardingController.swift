//
//  ViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 1/17/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class UseronboardingController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    
    
    @IBOutlet weak var birthDate: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    
    let picker = UIDatePicker()
    let genderPicker = UIPickerView()
    let heightPicker = UIPickerView()
    let genderOptions = ["Male", "Female"]
    let heightOptions = [["1'", "2'", "3'", "4'", "5'", "6'", "7'", "8'"],["1\"", "2\"", "3\"", "4\"", "5\"", "6\"", "7\"", "8\"", "9\"", "10\"", "11\""]]
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        genderPicker.tag = 1
        heightPicker.tag = 2
        heightPicker.delegate = self
        genderPicker.delegate = self
        gender.inputView = genderPicker
        height.inputView = heightPicker
        birthDate.layer.cornerRadius = 0
        gender.layer.cornerRadius = 0
        height.layer.cornerRadius = 0
        weight.layer.cornerRadius = 0
    }
    
    func createDatePicker () {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dobDonePressed))
        let done1 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(genderDonePressed))
        let done2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(heightDonePressed))
        
        toolbar.setItems([done], animated: false)
        birthDate.inputAccessoryView = toolbar
        birthDate.inputView = picker
        gender.inputView = genderPicker
        gender.inputAccessoryView = toolbar
        height.inputView = heightPicker
        height.inputAccessoryView = toolbar
        picker.datePickerMode = .date
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag == 1 {
            return 1
        } else if pickerView.tag == 2 {
            return 2
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if pickerView.tag == 1 {
            return genderOptions.count
        } else if pickerView.tag == 2 {
           return heightOptions[component].count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return genderOptions[row]
        } else if pickerView.tag == 2 {
            return heightOptions[component][row]
        }
        return nil
    }
    
    var feet = ""
    var inch = ""
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            gender.text = genderOptions[row]
        } else if pickerView.tag == 2 {
            if component == 0 {
                feet = heightOptions[component][row]
            } else if component == 1{
                inch = heightOptions[component][row]
            }
        }
        height.text = "\(feet) \(inch)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func saveUser(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
        let loginView = self.storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBarViewController
        let appDelegate = UIApplication.shared.delegate
        appDelegate?.window??.rootViewController = loginView
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func dobDonePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        birthDate.text = "\(dateString)"
        self.view.endEditing(true)
    }
    @objc func heightDonePressed() {
        self.view.endEditing(true)
    }
    @objc func genderDonePressed() {
        self.view.endEditing(true)
    }
}


