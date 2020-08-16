//
//  BorderButton.swift
//  AppSwoosh
//
//  Created by ggg on 02.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //To provide a kind of border frame over the button:
    override func awakeFromNib() {
        
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
