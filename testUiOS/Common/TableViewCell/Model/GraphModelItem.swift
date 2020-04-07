//
//  GraphModelItem.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation

class GraphModelItem: MainViewModelItem {
    var type: MainViewModelItemType {
        return .graph
    }
    var sectionTitle: String {
        return "Descripcion"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var graphDescription: String
    var helloWorld: HelloWorldModel?

    init(graphDescription: String, helloWorld: HelloWorldModel?) {
        self.graphDescription = graphDescription
        self.helloWorld = helloWorld
    }
}
