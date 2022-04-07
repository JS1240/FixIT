//
//  CategoryCollectionViewCell.swift
//  FixIT
//
//  Created by Jure Šunić on 07/04/2022.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    func setup(category: ServiceCategory) {
        categoryTitleLabel.text = category.name
        categoryImageView.kf.setImage(with: <#T##Source?#>)
    }
}
