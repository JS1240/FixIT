//
//  FixJobsTableViewCell.swift
//  FIXIT.CO
//
//  Created by Jure Šunić on 17/03/2021.
//

import UIKit

final class FixJobsTableViewCell: UITableViewCell {

    static let identifier = "FixJobsTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
