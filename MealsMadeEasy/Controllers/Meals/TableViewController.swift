//
//  TableViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 2/14/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let list = [["2", "Feb", UIImage(named: "bagel"), "Bagel",
                 UIImage(named: "cereal"), "Cereal", UIImage(named: "sandwich"), "Sandwich", UIImage(named: "tacos"), "Tacos"], ["3", "Feb", UIImage(named: "bagel"), "Bagel",
                                                                                                                                 UIImage(named: "cereal"), "Cereal", UIImage(named: "sandwich"), "Sandwich", UIImage(named: "tacos"), "Tacos"], ["26", "Mar", UIImage(named: "bagel"), "Bagel",]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MealTableViewCell", for: indexPath) as? MealTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        if indexPath.row == 0 || indexPath.row == 1{
            cell.month?.text = list[indexPath.row][0] as? String
            cell.date?.text = list[indexPath.row][1] as? String
            cell.mealone.image = list[indexPath.row][2] as? UIImage
            cell.mealOneLabel?.text = list[indexPath.row][3] as? String
            cell.mealtwo.image = list[indexPath.row][4] as? UIImage
            cell.mealTwoLabel?.text = list[indexPath.row][5] as? String
            cell.lunchMeal.image = list[indexPath.row][6] as? UIImage
            cell.lunchLabel?.text = list[indexPath.row][7] as? String
            cell.dinnerMeal.image = list[indexPath.row][8] as? UIImage
            cell.dinnerLabel?.text = list[indexPath.row][9] as? String
        } else {
            cell.month?.text = list[indexPath.row][0] as? String
            cell.date?.text = list[indexPath.row][1] as? String
            cell.mealone.image = list[indexPath.row][2] as? UIImage
            cell.mealOneLabel?.text = list[indexPath.row][3] as? String
            
            cell.mealtwo.isHidden = true
            cell.mealTwoLabel.isHidden = true
            cell.lunchMeal.isHidden = true
            cell.lunchLabel.isHidden = true
            cell.dinnerMeal.isHidden = true
            cell.dinnerLabel.isHidden = true
            cell.dinner.isHidden = true
            cell.lunch.isHidden = true
        }
        return(cell)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
