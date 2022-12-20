//
//  LoginModel.swift
//  idea
//
//  Created by 선민재 on 2022/12/19.
//

import Foundation


struct LoginModel: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: LoginResponse
}

struct LoginResponse: Codable {
    let accessToken: String
    let refreshToken: String
    let expiredAt: String
}
