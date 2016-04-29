//
//  SoftwareUpdateStatusDeviceTypes.swift
//  Pods
//
//  Created by Marcel Dittmann on 22.04.16.
//
//

import Foundation
import Gloss

public struct SoftwareUpdateStatusDeviceTypes: Decodable {
    
    /**
     Flag for when bridge update is avaliable
     */
    public let bridge: Bool?
    
    /**
     List of IDs of lights to be updated.
     */
    public let lights: [String]?
    
    /**
     List of IDs of sensors to be updated
     */
    public let sensors: [String]?
    
    public init?(json: JSON) {
        
        bridge = "bridge" <~~ json
        lights = "lights" <~~ json
        sensors = "sensors" <~~ json
        
    }
}