//
//  ProjectsViewController.swift
//  Thomas Vagning
//
//  Created by Thomas Vagning on 23/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

import UIKit

class ProjectsViewController: UIViewController {
    
    @IBOutlet weak var ProjectsTitel: UILabel!
    @IBOutlet weak var psdtgb: UILabel!
    @IBOutlet weak var AvecButton: UIButton!
    @IBOutlet weak var ACEButton: UIButton!
    @IBOutlet weak var UCPButton: UIButton!
    @IBOutlet weak var SPButton: UIButton!
    @IBOutlet weak var SubButton: UIButton!
    @IBOutlet weak var MButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ProjectsTitel.text = "Projects"
        ProjectsTitel.textColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1)
        ProjectsTitel.font = UIFont(name: "HelveticaNeue-Thin", size: 52)
        
        psdtgb.text = "Swipe down to go back"
        psdtgb.textColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1)
        psdtgb.font = UIFont(name: "HelveticaNeue-Thin", size: 22)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AvecAlertView() {
        var customIcon = UIImage(named: "avectronic")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "Avectronic", text: "I developed the webshhop for a small Danish webshop called Avectronic. Find them at www.avectronic.dk", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }
    
    @IBAction func ACEAlertView() {
        var customIcon = UIImage(named: "ACE")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "ACE", text: "During my one month of volunteer work at ACE in London, I developed a new website for them.", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }
    
    @IBAction func UCPAlertView() {
        var customIcon = UIImage(named: "UCP")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "Un Cirque Passe", text: "Is a educational book from the publisher Marko ApS. I did the layout for the entire book and designed the book cover.", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }

    @IBAction func SPAlertView() {
        var customIcon = UIImage(named: "SP")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "Strategisk Projektledelse", text: "Is a educational book from the publisher Marko ApS. I redsigned the book cover for the re-release of the book.", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }
    
    @IBAction func SubAlertView() {
        var customIcon = UIImage(named: "Sublime")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "Sublime icon redsign", text: "After I started using Sublime Text 2, I decided to do a Yosemite Redesign of the icon. It has been downloaded more than 600 times from my Dribbble page.", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }
    
    @IBAction func MAlertView() {
        var customIcon = UIImage(named: "More")
        
        //Create a new alertview with custom parameters
        var alertview = JSSAlertView().show(self, title: "More", text: "I have 3 new apps in the making and I'm always on the hunt for new clients.", buttonText: "Done", color: UIColorFromHex(0xFFFFFF, alpha: 1), iconImage: customIcon)
        
        //Change the font of the alertview
        alertview.setTitleFont("HelveticaNeue-Thin")
        alertview.setTextFont("HelveticaNeue-Thin")
        alertview.setButtonFont("HelveticaNeue-Thin")
        alertview.setTextTheme(.Dark)
    }
    
}
