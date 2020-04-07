//
//  BaseService.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Alamofire


/// Default Alamofire request
class ServiceCallback {
    @discardableResult
    public static func performRequest<T:Decodable>(route:ApiRouter, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T>)->Void) -> DataRequest {
        return AF.request(route)
                        .responseDecodable (decoder: decoder){ (response: DataResponse<T>) in
                            completion(response.result)
        }
    }
}
