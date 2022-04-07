//
//  String+Extension.swift
//  FixIT
//
//  Created by Jure Šunić on 07/04/2022.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}
