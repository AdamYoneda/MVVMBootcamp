//
//  UIViewExtension.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/24.
//

import Foundation
import UIKit

extension UIView {
    func round(_ radiuis: CGFloat) {
        self.layer.cornerRadius = radiuis
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
