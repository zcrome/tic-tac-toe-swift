//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by zcrome on 7/18/16.
//  Copyright © 2016 zcrome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func playerTurnButton(sender: AnyObject) {
        
        sender.setImage(UIImage(named:"nought.png"), forState: .Normal)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

