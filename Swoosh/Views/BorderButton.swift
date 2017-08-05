//
//  BorderButton.swift
//  Swoosh
//
//  Created by Andrew Carras1 on 8/5/17.
//  Copyright © 2017 Andrew Carras1. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
