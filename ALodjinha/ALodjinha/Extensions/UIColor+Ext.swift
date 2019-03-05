//
//  UIColor+Ext.swift
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    struct TabBar {
        static let backgroundColor = UIColor(249, 249, 249)
        static let tintColor = UIColor(128, 92, 157)
    }
}
