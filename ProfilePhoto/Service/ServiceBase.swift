//
//  ServiceBase.swift
//  ProfilePhoto
//
//  Created by Xcode on 18.04.2020.
//  Copyright © 2020 Xcode. All rights reserved.
//

import Foundation
import Alamofire
protocol  ServiceBaseProtocol {
    var http:HTTP { get set }
    func OauthURL()-> String
}
class ServiceBase:ServiceBaseProtocol{
      var http = HTTP()
    func OauthURL() -> String {
        var component = URLComponents()
        component.scheme = "http"
        component.host="gorest.co.in"
        component.path="/public-api/photos";
        component.queryItems = [
            URLQueryItem(name: "_format", value: "json"),
            URLQueryItem(name: "access-token", value: "h1JpAGhNxXuVqpH2irfI6Fex5m42vS1nGpJo")
        ]
        return component.url!.absoluteString
    }
    
}
