//
//  RVDevice.swift
//  Pods-RVDeviceHelper_Example
//
//  Created by Roman Vegas on 8/10/17.
//

import Foundation

enum DeviceType {
    case iPhone
    case iPad
    case AppleTV
    case CarPlay
    case UnknownDevice
}

open class RVDevice {
    
    public class func currentOSVersion() -> String {
        return ProcessInfo.processInfo.operatingSystemVersionString
    }
    
    class func device() -> DeviceType {
        
        switch UIDevice.current.userInterfaceIdiom {
        case .unspecified:
            return .UnknownDevice
        case .tv:
            return .AppleTV
        case .carPlay:
            return .CarPlay
        case .pad:
            return .iPad
        case .phone:
            return .iPhone
        }
    }
    
    public class func deviceModel() -> String {
        return UIDevice.current.modelName
    }
}
