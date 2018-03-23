//
//  AddMealViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/23/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class AddMealViewController: UIViewController {
    
    @IBOutlet weak var servings: UILabel!
    @IBOutlet weak var mealDate: UITextField!
    
     let picker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view.
    }
    @IBAction func backNavigation(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addServing(_ sender: Any) {
        var count = Int(servings.text!)
        count = count! + 1
        servings.text = String(count!)
    }
    
    @IBAction func saveMeal(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func substractServing(_ sender: Any) {
        if servings.text != "1" {
            var count = Int(servings.text!)
            count = count! - 1
            servings.text = String(count!)
        }
    }
    
    
    
    func createDatePicker () {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dobDonePressed))
        toolbar.setItems([done], animated: false)
        mealDate.inputAccessoryView = toolbar
        mealDate.inputView = picker
    
    }
    
    @objc func dobDonePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        mealDate.text = "\(dateString)"
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
