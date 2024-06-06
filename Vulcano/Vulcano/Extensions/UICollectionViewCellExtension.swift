//
//  UICollectionViewCellExtension.swift
//  Vulcano
//
//  Created by Давид Васильев on 06.06.2024.
//

import UIKit

extension UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
