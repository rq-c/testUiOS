//
//  SelfieCell.swift
//  testUiOS
//
//  Created by Ramón Quiñonez on 06/04/20.
//  Copyright © 2020 Ramón Quiñonez. All rights reserved.
//

import UIKit

class SelfieCell: UITableViewCell {
    @IBOutlet weak var selfieImageView: UIImageView!
    
    var item: MainViewModelItem? {
        didSet {
            guard let item = item as? SelfieModelItem else {
                return
            }
            
            selfieImageView?.image = UIImage(named: item.imageURL)
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
    
    func updateSelfie(image:UIImage){
        selfieImageView?.image = image
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
