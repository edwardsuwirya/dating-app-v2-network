//
//  File.swift
//  
//
//  Created by Edward Suwirya on 1/15/22.
//

import Foundation

public struct CommonResponse<T:Codable> :Codable{
    public let status: String
    public let code: String
    public let message: String
    public let data: T
}
