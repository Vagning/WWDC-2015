//
//  WelcomeViewController.swift
//  Thomas Vagning
//
//  Created by Thomas Vagning on 26/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var appleLogo: UILabel!
    @IBOutlet weak var Im: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var description1: UILabel!
    @IBOutlet weak var description2: UILabel!
    @IBOutlet weak var ttc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set parameters for the Apple Logo
        appleLogo.text = ""
        appleLogo.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        appleLogo.font = UIFont(name: "HelveticaNeue-Thin", size: 72)
        
        //Set parameters for the intro text
        Im.text = "I'm"
        Im.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        Im.font = UIFont(name: "HelveticaNeue-Thin", size: 24)
        
        name.text = "Thomas Vagning"
        name.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        name.font = UIFont(name: "HelveticaNeue-Thin", size: 36)
        
        description1.lineBreakMode = .ByWordWrapping
        description1.numberOfLines = 0
        description1.text = "and this is my WWDC Scholarship app."
        description1.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        description1.font = UIFont(name: "HelveticaNeue-Thin", size: 24)
        
        description2.text = "I hope to see you at WWDC 2015"
        description2.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        description2.font = UIFont(name: "HelveticaNeue-Thin", size: 24)
        
        ttc.text = "Tap to continue"
        ttc.textColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1)
        ttc.font = UIFont(name: "HelveticaNeue-Thin", size: 24)
        
        //Show an alert when app is first loaded to warn that the app is designed for iPhone 6
        var alertview = JSSAlertView().show(self, title: "Hey", text: "This app has been optimized for iPhone 6.")
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")

    }
}

