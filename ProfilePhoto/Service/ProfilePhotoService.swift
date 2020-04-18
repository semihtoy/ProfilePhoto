//
//  ProfilePhotoService.swift
//  ProfilePhoto
//
//  Created by Xcode on 18.04.2020.
//  Copyright © 2020 Xcode. All rights reserved.
//

import Foundation
import Alamofire
class ProfilePhotoService: ServiceBase {
    func getProfilePhoto( result: @escaping ([Result]) -> Void ) -> Void {
            self.http.get(url: self.OauthURL()) { (data) in
            let jsonDecoder = JSONDecoder()
            do {
                let responseModel = try jsonDecoder.decode(Profile.self, from: data)
                result(responseModel.result!)
            } catch {
                
            }
        }    
    }
}

