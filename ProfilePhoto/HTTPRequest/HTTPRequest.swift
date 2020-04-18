//
//  HTTPRequest.swift
//  ProfilePhoto
//
//  Created by Xcode on 18.04.2020.
//  Copyright © 2020 Xcode. All rights reserved.
//

import Foundation
import Alamofire
class HTTP  {
    
    func get(url:String, result: @escaping (Data) -> Void    ) -> Void {    
        AF.request(url, method: .get).response { response in
        result(response.data!)
          }
    }
    }
    func post() -> Void {
    }
    func put() -> Void {
    }
    func delete() -> Void {
    }
