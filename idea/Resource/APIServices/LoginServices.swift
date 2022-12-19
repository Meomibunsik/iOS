//
//  LoginServices.swift
//  idea
//
//  Created by 선민재 on 2022/12/19.
//

import Foundation
import Moya

enum LoginServices {
    case signUp(param: SignUpRequest)
    case login(param: LoginRequest)
}


extension LoginServices: TargetType {
    public var baseURL: URL {
        return URL(string: GeneralAPI.baseURL)!
    }
    
    var path: String {
        switch self {
        case .signUp:
            return "/user/register"
        case .login:
            return "/user/login"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .signUp,
             .login:
            return .post
        }
    }
    
    var sampleData: Data {
        return "@@".data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case .signUp(let param):
            return .requestJSONEncodable(param)
        case .login(let param):
            return .requestJSONEncodable(param)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return["Content-Type" :"application/json"]
        }
    }
}
