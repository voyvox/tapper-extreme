//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Craig Newcomb on 3/2/16.
//  Copyright © 2016 Craig Newcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Properties
    
    var maxTaps = 0
    var currentTaps = 0

    //Outlets
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
 
        
        if howManyTapsTxt.text != nil && howManyTapsTxt != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
            
                     //App is crashing currently because it's unexpectedly unwrapping nil here. Fix this!
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            
   
            tapLbl.text = "\(currentTaps) Taps"
        }
        
    }

}

