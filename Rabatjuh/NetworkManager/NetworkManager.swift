//
//  NetworkManager.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 28/11/2022.
//

import Foundation
import Alamofire
import SwiftyJSON


class NetworkManager {
    static let shared = NetworkManager()
    
    
    static var json : JSON = JSON()
    
    static let sharedInstance: NetworkManager = {
        return NetworkManager()
    }()
    
    let headers: HTTPHeaders = [
        "key" : Key.RestApi.headerKey
    ]
    
    

    //MARK: Get Request
    func GetRequest(ApiURl: String, completion:@escaping (JSON) -> ())  {

        DispatchQueue.main.async {


            AF.request(ApiURl, method: .get, headers: self.headers)
                .responseData { response in
                    switch response.result {
                    case .success(let data):

                        do{
                            NetworkManager.json = try JSON(data: data)

                            completion(NetworkManager.json)
                        }
                        catch{
                            print("Error while decoding response: \(error), from: \(String(data: data, encoding: .utf8)!)")
                            completion(NetworkManager.json)
                        }


                    case .failure(let error):
                        print("Failure Error",error)
                        break
                    }
                }
        }
    }
    
    //MARK: Post Request
    func PostRequest(ApiURl: String, parameters: Parameters, completion:@escaping (JSON) -> ())  {
        
   
        
        DispatchQueue.main.async {
            
            
            AF.request(ApiURl, method: .post, parameters: parameters, headers: self.headers)
                .responseData { response in
                    switch response.result {
                    case .success(let data):
                        
                        
                        do{
                            NetworkManager.json = try JSON(data: data)
                            
                            completion(NetworkManager.json)
                        }
                        catch{
                            print("Error while decoding response: \(error), from: \(String(data: data, encoding: .utf8)!)")
                            completion(NetworkManager.json)
                        }
                        
                        
                    case .failure(let error):
                        print("Failure Error",error)
                        
                        break
                    }
                }
        }
    }
    
    //MARK: Post Multiart Request
    func PostRequestWithMultipart(ApiURl: String, parameters: Parameters,image : UIImage, completion:@escaping (JSON) -> ())  {

        DispatchQueue.main.async {


            AF.upload(multipartFormData: { multiPart in
            for param in parameters {
                multiPart.append("\(param.value)".data(using: String.Encoding.utf8)!, withName: param.key)
            }
                multiPart.append(image.jpegData(compressionQuality : 5.0)!, withName: "image", fileName: "file.jpg", mimeType: "image/jpg")
            }, to: ApiURl, method: .post, headers: self.headers) .uploadProgress(queue: .main, closure: { progress in
               // print("Upload Progress: \(progress.fractionCompleted)")
            }).responseData { response in

                    switch response.result {
                    case .success(let data):

                        do{
                            NetworkManager.json = try JSON(data: data)

                            completion(NetworkManager.json)
                        }
                        catch{
                            print("Error while decoding response: \(error), from: \(String(data: data, encoding: .utf8)!)")
                            completion(NetworkManager.json)
                        }


                    case .failure(let error):
                        print("Failure Error",error)

                        break
                    }
                }
        }
    }
    
    
}
