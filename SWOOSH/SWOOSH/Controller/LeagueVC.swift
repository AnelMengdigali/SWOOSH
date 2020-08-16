//
//  LeagueVC.swift
//  SWOOSH
//
//  Created by ggg on 06.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    //Declaration:
    var player: Player!
    
    @IBOutlet weak var NextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //Player object:
        player = Player()
        
    }
    
    //programmatically making segue from vc to vc:
    //we can write a similar code with different identifier names in order to go to other vc-s
    @IBAction func NextTapped(_ sender: Any) {
        
        //show needed vc
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func MensSelected(_ sender: Any) {
        //player.desiredLeague = "mens" --> is better to work with data in other function than action function --> selectLeague func
        selectLeague(leagueType: "mens")
    }
    @IBAction func WomensSelected(_ sender: Any) {
         selectLeague(leagueType: "womens")
    }
    @IBAction func CoedSelected(_ sender: Any) {
         selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        
        player.desiredLeague = leagueType
        
        //unabling the next button as options will be selected:
        NextButton.isEnabled = true
    }
    
    //function for passing the data between view controllers(vc):
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //passing the data: grabbing the vc we needed and storing the data to theirs object:
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        //similarly we can write a code for passing data to the another segue
    }
    
}
