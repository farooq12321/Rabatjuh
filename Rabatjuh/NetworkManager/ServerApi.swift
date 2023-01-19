//
//  EndPoints.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 28/11/2022.
//

import Foundation

struct ServerApi {
    
    //MARK: Base URL
    
    private static let ApiScheme = "https://"
    private static let ApiHost = "www.rabatjuh.online"
    
    private static let BaseURL = ApiScheme + ApiHost
    

    //MARK: Module
    private static let user = BaseURL + "/api/user"
    private static let restaurant = BaseURL + "/api/restaurant"
    
    

    
    //MARK: End Points
    
    //User module
    static var login = user + "/login";
    static var register = user + "/register";
    static var update = user + "/update";
    
    
    //Resturant module
    static var restaurant_fetch = user + "/fetch";
    
}


