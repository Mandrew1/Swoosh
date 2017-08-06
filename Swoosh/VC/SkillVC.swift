//
//  SkillVC.swift
//  Swoosh
//
//  Created by Andrew Carras1 on 8/5/17.
//  Copyright © 2017 Andrew Carras1. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(_ sender: Any) {
        performSegue(withIdentifier: "backSegue", sender: self)
    }
    
}
