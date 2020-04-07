//
//  ApiRouter.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation
import Alamofire

protocol Configuration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
    var encoding: ParameterEncoding { get }
}


enum ApiRouter: Configuration {

    case helloWorld

    // MARK: - HTTPMethod
    internal var method: HTTPMethod {
       switch self {
       case .helloWorld:
           return .post
       }
   }

   // MARK: - Path
   internal var path: String {
       switch self {
       case .helloWorld:
        return Constants.EndPoint.helloWorld
       }
   }

   // MARK: - Parameters
   internal var parameters: Parameters? {
       switch self {
       case .helloWorld:
        return nil
       }
   }
    
    // MARK: - Encoding
    internal var encoding: ParameterEncoding {
        switch method {
        case .get:
            return URLEncoding.default
        default:
            return JSONEncoding.default
        }
    }
    
       
    

    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
       let url = try Constants.Server.baseURL.asURL()
       var urlRequest = URLRequest(url: url.appendingPathComponent(path))
       
       // HTTP Method
       urlRequest.httpMethod = method.rawValue
       
       // Common Headers
       urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
       urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
       
        do {
            urlRequest = try encoding.encode(urlRequest, with: parameters)
        } catch {
            throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
        }
        
       return urlRequest
    }
}

