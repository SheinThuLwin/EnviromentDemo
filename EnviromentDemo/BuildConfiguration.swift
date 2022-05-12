//
//  BuildConfiguration.swift
//  EnviromentDemo
//
//  Created by ut-i02 on 12/05/2022.
//
//https://sarunw.com/posts/how-to-set-up-ios-environments/#rename

import Foundation

enum Environment: String {
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"

    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"

    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

class BuildConfiguration {
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    var baseURL: String {
        switch environment {
        case .debugStaging, .releaseStaging:
            return "https://staging.example.com/api"
        case .debugDevelopment, .releaseDevelopment:
            return "https://dev.example.com/api"
        case .debugProduction, .releaseProduction:
            return "https://example.com/api"
        }
    }
    
    private init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        
        environment = Environment(rawValue: currentConfiguration)!
    }
}
