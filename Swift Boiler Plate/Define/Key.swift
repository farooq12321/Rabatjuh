//
//  Key.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import Foundation



struct Key {
    
    struct Google {
        static var apiPublicKey: String { return "publicKey" }
        static var apiSecretKey: String { return "secretKey" }
    }
    
    struct Facebook {
        static var apiPublicKey: String { return "publicKey" }
        static var apiSecretKey: String { return "secretKey" }
    }
    
    
    struct RestApi {
        static var headerKey: String { return "bearer EX3hAgMk3IMktRDhOoodZXSk3anBk3UR" }
    }
    
}
