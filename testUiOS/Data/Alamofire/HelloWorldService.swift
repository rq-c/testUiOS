//
//  HelloWorldService.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation
import Alamofire

class HelloWorldService {
    static func helloWorld(completion:@escaping (Result<HelloWorldModel>) -> Void) {
        ServiceCallback.performRequest(
            route: ApiRouter.helloWorld,
            completion: completion
        )
    }
}

