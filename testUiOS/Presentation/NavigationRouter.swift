//
//  NavigationRouter.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit

class NavigationRouter{
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
    
    static func createMainModule() -> MainViewController {
        return mainstoryboard.instantiateViewController(withIdentifier: "id_MainViewController") as! MainViewController
    }
}
