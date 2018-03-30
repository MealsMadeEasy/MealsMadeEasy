//
//  APIManager.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/30/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit
 typealias ServiceResponse = (JSON, NSError?) -> Void
class APIManager: NSObject {
   
    
        static let sharedInstance = APIManager()
        
        let baseURL = "https://meals-made-easy.herokuapp.com/"
        let apiKey = "i0ZEF0GfGTBWEO0QcwR2Ybw_T2fOxR6VnQPPG42s8PMYC2AEoX65Gcn71rYVAVs0"
        let applicationId = "ios-NBMVE7oyP9BHa11M"
        func getRandomUser(onCompletion: (JSON) -> Void) {
            let route = baseURL
            makeHTTPGetRequest(route, onCompletion: { json, err in
                onCompletion(json as JSON)
            })
        }
        
        func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
            let request = NSMutableURLRequest(URL: NSURL(string: path)!)
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
                let json:JSON = JSON(data: data)
                onCompletion(json, error)
            })
            task.resume()
        }
}
