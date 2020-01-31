//
//  ViewController.swift
//  i-am-planeswalker
//
//  Created by Nicholas Lee on 1/24/20.
//  Copyright © 2020 Nicholas Lee. All rights reserved.
//

import UIKit

// Convert hex color codes to color
extension UIColor {
    convenience init (hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

class ViewController: UIViewController {
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var planeswalkerImageView1: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var planeswalkerNumber = 0
    
    override func viewDidLoad(){
        
 
    }

    @IBAction func chaosButtonPressed(_ sender: UIButton) {
        
        // Unhide titleLabel and planeswalkerImageView1
        self.titleLabel.isHidden = false
        self.planeswalkerImageView1.isHidden = false
        
        planeswalkerNumber = Int.random(in: 0...2)
        planeswalkerImageView1.image = [ #imageLiteral(resourceName: "I.M._Weasel__Jace"), #imageLiteral(resourceName: "I.R._Baboon__Garrick"),  #imageLiteral(resourceName: "Cow__Elspeth")][planeswalkerNumber]
        
        
        
        /*
            MTG Hex Color Codes
            Blue      = "0x3F8DC2"
            Green     = "0x3A7F4C"
            White     = "0xE9E3CF"
            Black     = "0x32302B"
            Red       = "0xBD3829"
            Gold      = "0xD2C377"
            Colorless = "0x8BA6B3"
         */
        
        // Change UI elements according to planeswalkerNumber
        switch planeswalkerNumber {
        case 0:
            self.titleLabel.text = "I.M. Jace"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0x3F8DC2)
            
        case 1:
            self.titleLabel.text = "I.R. Garruk"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0x3A7F4C)
        case 2:
            self.titleLabel.text = "Elspeth al rescate!"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0xE9E3CF)

        default:
            self.view.backgroundColor = UIColor(hex:0x3F8DC2)

        }
        
    }
    
}

 
