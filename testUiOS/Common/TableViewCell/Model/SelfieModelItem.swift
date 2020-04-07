//
//  SelfieModelItem.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import Foundation

class SelfieModelItem: MainViewModelItem {
    var type: MainViewModelItemType {
        return .selfie
    }
    var sectionTitle: String {
        return "Selfie"
    }
    
    var rowCount: Int {
        return 1
    }
    
    var imageURL: String
    
    init(imageURL: String) {
        self.imageURL = imageURL
    }
}
