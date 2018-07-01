//
//  WonderViewController.swift
//  Transition Animation
//
//  Created by apple on 30/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit


class WonderViewController: UIViewController {

    @IBOutlet weak var wonderDesc: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var wonderImage: UIImageView!
    var wonderName = String()
    var wonderDescString = String()
    
    var wonderHeroId = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.wonderImage.hero.id = "img \(wonderHeroId)"
        self.name.hero.id = "name \(wonderHeroId)"
        self.wonderDesc.hero.id = "des \(wonderHeroId)"
        
        self.wonderImage.image = UIImage(named:wonderName)
        self.name.text = self.wonderName
        self.wonderDesc.text = wonderDescString
        
      
    }

   
    @IBAction func backBtn(_ sender: Any) {
        self.hero.dismissViewController()
    }
    
}
