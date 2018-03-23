//
//  MealDetailViewController.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/14/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {
    
    
    @IBAction func backNav(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func callMethod() {
        //do stuff here
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
