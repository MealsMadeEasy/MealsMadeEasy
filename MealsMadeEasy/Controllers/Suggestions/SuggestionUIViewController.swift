//
//  SuggestionUIViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/9/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class SuggestionUIViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = [[UIImage(named: "bagel"), "Bagel"],
                 [UIImage(named: "cereal"), "Cereal"], [UIImage(named: "sandwich"), "Sandwich"], [UIImage(named: "tacos"), "Tacos"]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SuggestionTableViewCell", for: indexPath) as? SuggestionTableViewCell  else {
            fatalError("The dequeued cell is not an instance of SuggestionTableViewCell.")
        }
        cell.MealTitle?.text = list[indexPath.row][1] as? String
        cell.MealImage.image = list[indexPath.row][0] as? UIImage
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
