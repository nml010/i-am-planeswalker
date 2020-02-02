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
    
    override func viewDidLoad(){
        let mtgColorArray = ["White", "Blue", "Black", "Red", "Green" ]
        
        switch mtgColorArray.randomElement() {
        case "White":
            self.view.backgroundColor = UIColor(hex: 0xE9E3CF)
        case "Blue":
            self.view.backgroundColor = UIColor(hex: 0x3F8DC2)
        case "Black":
            self.view.backgroundColor = UIColor(hex: 0x32302B)
        case "Red":
            self.view.backgroundColor = UIColor(hex: 0xBD3829)
        case "Green":
            self.view.backgroundColor = UIColor(hex: 0x3A7F4C)
        default:
            self.view.backgroundColor = UIColor(hex: 0x3F8DC2)

        }
    }

    @IBAction func chaosButtonPressed(_ sender: UIButton) {
        
        // Unhide titleLabel and planeswalkerImageView1
        self.titleLabel.isHidden = false
        self.planeswalkerImageView1.isHidden = false
        
        let planeswalkerArray = [#imageLiteral(resourceName: "I.M._Weasel__Jace"), #imageLiteral(resourceName: "I.R._Baboon__Garruk"),  #imageLiteral(resourceName: "Cow__Elspeth")]
        
        planeswalkerImageView1.image = planeswalkerArray.randomElement()
        
        // Change UI elements according to planeswalkerNumber
        switch planeswalkerImageView1.image {
        case #imageLiteral(resourceName: "I.M._Weasel__Jace"):
            self.titleLabel.text = "I.M. Jace"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0x3F8DC2)
            
        case #imageLiteral(resourceName: "I.R._Baboon__Garruk"):
            self.titleLabel.text = "I.R. Garruk"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0x3A7F4C)
        case #imageLiteral(resourceName: "Cow__Elspeth"):
            self.titleLabel.text = "Elspeth al rescate!"
            self.titleLabel.textAlignment = .center
            self.view.backgroundColor = UIColor(hex:0xE9E3CF)

        default:
            self.view.backgroundColor = UIColor(hex:0x3F8DC2)

        }
        
    }
    
}

 
