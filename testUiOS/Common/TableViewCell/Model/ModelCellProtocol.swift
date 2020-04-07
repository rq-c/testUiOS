//
//  ModelCellProtocol.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

protocol MainViewModelItem {
    var type: MainViewModelItemType { get }
    var sectionTitle: String { get }
    var rowCount: Int { get }
}

enum MainViewModelItemType {
    case name
    case selfie
    case graph
}
