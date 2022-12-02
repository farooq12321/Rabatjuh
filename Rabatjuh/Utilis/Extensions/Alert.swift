//
//  Alert.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 29/11/2022.
//


import ToastViewSwift


public enum ToastType {
    case success
    case error
    case warning
    case info
}



extension  UIViewController {
    
   
        
        
        
    func showToast( message: String, type: ToastType) {
        
        
        switch type {
            
        case .success:
            let toast = Toast.default(
                image: UIImage(systemName: "checkmark.circle")!,
                imageTint: UIColor.success,
                title: "Success",
                subtitle: message
             )
            toast.show()
            
        case .error:
            let toast = Toast.default(
                image: UIImage(systemName: "xmark.circle")!,
                imageTint: UIColor.error,
                title: "Error",
                subtitle: message
             )
            toast.show()
            
        case .info:
            let toast = Toast.default(
                image: UIImage(systemName: "info.circle")!,
                imageTint: UIColor.info,
                title: "Info",
                subtitle: message
             )
            toast.show()
            
        case .warning:
            let toast = Toast.default(
                image: UIImage(systemName: "exclamationmark.triangle")!,
                imageTint: UIColor.warning,
                title: "Warning",
                subtitle: message
             )
            toast.show()
        }
            
        
        
    }
    
  
    
    
}

