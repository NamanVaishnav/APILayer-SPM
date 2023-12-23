//
//  ErrorResponse.swift
//  TenttsAPI
//
//  Created by Naman Vaishnav on 23/12/23.
//

import Foundation


public struct ErrorResponse: Codable {
    public let code: String
    public let description: String
    
    public init(code: String, description: String) {
        self.code = code
        self.description = description
    }
}
