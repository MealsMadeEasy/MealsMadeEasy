//
//  ShoppingViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/4/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = [["2 tablespoons white sugar"], ["7 bread flour"], ["1 tablespoon vegetable oil"], ["1 tablespoon salt"], ["3 tablespoons poppy seeds (optional)"]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as? ShoppingTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ShoppingTableViewCell.")
        }
        cell.ingredient?.text = list[indexPath.row][0] as? String
        return cell
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

