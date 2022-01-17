//
//  File.swift
//  
//
//  Created by Edward Suwirya on 1/15/22.
//

import Foundation
import Moya

public enum DatingAppApi{
    case callRegistration(MemberRegistrationRequest)
}

extension DatingAppApi{
    public var parameters : [String:Any]{
        switch self {
        case .callRegistration(let memberRegistrationRequest):
            return ["email":memberRegistrationRequest.email,"password":memberRegistrationRequest.password]
        }
    }
}

extension DatingAppApi: TargetType{
    public var baseURL: URL{
        return URL(string: "http://localhost:8888/api/v1")!
    }
    
    public var path: String{
        return "/member/registration"
    }
    
    public var method: Moya.Method{
        return .post
    }
    public var headers: [String : String]?{
        return nil
    }
    public var task: Task{
        return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
    }
}
