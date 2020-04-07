//
//  NameModelItem.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation

class NameModelItem: MainViewModelItem {
    var type: MainViewModelItemType {
        return .name
    }
    var sectionTitle: String {
        return "Perfil"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
