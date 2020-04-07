//
//  Constants.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation

struct Constants {
    struct Server {
        static let baseURL = "https://us-central1-bibliotecadecontenido.cloudfunctions.net"
    }
    
    struct EndPoint {
        static let helloWorld:String = "/helloWorld"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
