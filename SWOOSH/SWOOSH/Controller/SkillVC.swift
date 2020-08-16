//
//  SkillVC.swift
//  SWOOSH
//
//  Created by ggg on 06.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    //we are promising that there is will be an object:
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //just for checking the selected type through console:
        print(player.desiredLeague)
    }
    
    
}
