//
//  HelloWorldModel.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation

struct HelloWorldModel:Codable {
    var colors:[String]
    var questions:[Questions]
}

internal struct Questions:Codable {
    var total: Int
    var text: String
    var chartData: [ChartData]
}

internal struct ChartData:Codable {
    var text:String
    var percetnage:Int
}
