//
//  GraphCell.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit

class GraphCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: MainViewModelItem? {
        didSet {
            guard let item = item as? GraphModelItem else {
                return
            }
            
            descriptionLabel.text = item.graphDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
