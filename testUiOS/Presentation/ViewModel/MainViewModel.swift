//
//  MainViewModel.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit

protocol MainViewModelDelegate {
    func takeASelfie()
}

class MainViewModel: NSObject {
    var mainViewModelDelegate: MainViewModelDelegate?
    var items = [MainViewModelItem]()
    var selfieCell = UITableViewCell()
    
    func setViewDelegate(mainViewModelDelegate:MainViewModelDelegate?){
        self.mainViewModelDelegate = mainViewModelDelegate
    }
    
    override init() {
        super.init()

        let name = NameModelItem(name: "")
        items.append(name)
        
        let image = SelfieModelItem(imageURL: "ic-selfie")
        items.append(image)
        
        let graph = GraphModelItem(graphDescription: "Una gráfica o representación gráfica es un tipo de representación de datos, generalmente numéricos, mediante recursos visuales (líneas, vectores, superficies o símbolos), para que se manifieste visualmente la relación matemática o correlación estadística que guardan entre sí. También es el nombre de un conjunto de puntos que se plasman en coordenadas cartesianas y sirven para analizar el comportamiento de un proceso o un conjunto de elementos o signos que permiten la interpretación de un fenómeno. La representación gráfica permite establecer valores que no se han obtenido experimentalmente sino mediante la interpolación (lectura entre puntos) y la extrapolación (valores fuera del intervalo experimental).", helloWorld: nil)
        items.append(graph)
    }
    
    func executeHelloWorldService(){
        HelloWorldService.helloWorld { [weak self] result in
            switch result {
            case .success(let res):
                print(res)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

extension MainViewModel: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        switch item.type {
        case .name:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.identifier, for: indexPath) as? NameCell {
                cell.item = item
                return cell
            }
        case .selfie:
            if let cell = tableView.dequeueReusableCell(withIdentifier: SelfieCell.identifier, for: indexPath) as? SelfieCell {
                cell.item = item
                return cell
            }
        case .graph:
            if let cell = tableView.dequeueReusableCell(withIdentifier: GraphCell.identifier, for: indexPath) as? GraphCell {
                cell.item = item
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].sectionTitle
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.section]
        switch item.type {
        case .name:
            print("name")
        case .selfie:
            mainViewModelDelegate?.takeASelfie()
        case .graph:
            executeHelloWorldService()
        }
    }
    
}


