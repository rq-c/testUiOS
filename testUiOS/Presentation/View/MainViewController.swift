//
//  MainViewController.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let viewModel = MainViewModel()
    var imagePicker: ImagePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        viewModel.setViewDelegate(mainViewModelDelegate: self)
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
    }
    
    func setupTableView(){
        tableView?.dataSource = viewModel
        tableView?.delegate = viewModel
        
        tableView?.estimatedRowHeight = 80
        tableView?.rowHeight = UITableView.automaticDimension

        tableView?.register(NameCell.nib, forCellReuseIdentifier: NameCell.identifier)
        tableView?.register(SelfieCell.nib, forCellReuseIdentifier: SelfieCell.identifier)
        tableView?.register(GraphCell.nib, forCellReuseIdentifier: GraphCell.identifier)
    }
}

extension MainViewController:MainViewModelDelegate{
    func takeASelfie() {
        self.imagePicker.present(from: view)
    }
}

extension MainViewController: ImagePickerDelegate {

    func didSelect(image: UIImage?) {

    }
}
