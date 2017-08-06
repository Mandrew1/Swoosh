//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Andrew Carras1 on 8/5/17.
//  Copyright © 2017 Andrew Carras1. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextButon: BorderButton!
    
    var player : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButon.isHidden = true
        player = Player()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func coedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func womensTapped(_ sender: Any) {
       selectLeague(leagueType: "womens")
    }
    
    @IBAction func mensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    func selectLeague(leagueType : String) {
        
        player.selectedLeague = leagueType
        nextButon.isHidden = false
        nextButon.isEnabled = true
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "leagueSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
