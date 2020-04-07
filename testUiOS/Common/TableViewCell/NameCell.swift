//
//  NameCell.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {

    @IBOutlet weak var nameTextField: UITextField!
    
    var item: MainViewModelItem? {
        didSet {
            guard let item = item as? NameModelItem else {
                return
            }
            
            nameTextField?.text = item.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameTextField.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}

extension NameCell: UITextFieldDelegate{
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        switch textField {
        case nameTextField:
            let allowedCharacters = CharacterSet(charactersIn: "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLKMNÑOPQRSTUVWXYZ")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        default:
            break
        }
        return true
    }
}
