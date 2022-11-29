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
    private static let ApiHost = "showroomdepot.fr/app"
    
    private static let BaseURL = ApiScheme + ApiHost
    

    //MARK: Module
    private static let user = BaseURL + "/api/user"
    
    

    
    //MARK: End Points
    static var login = user + "/login";
    
}


