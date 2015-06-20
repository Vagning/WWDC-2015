//
//  FactsViewController.swift
//  Thomas Vagning
//
//  Created by Thomas Vagning on 22/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

import UIKit

class FactsViewController: UIViewController {
    
    @IBOutlet weak var FactsTitel: UILabel!
    @IBOutlet weak var FactLabel: UILabel!
    @IBOutlet weak var FactButton: UIButton!
    @IBOutlet weak var sdtgb: UILabel! //SwipeDownToGetBack
    
    let factArray = FactArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set parameters for the title
        FactsTitel.text = "Facts"
        FactsTitel.textColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1)
        FactsTitel.font = UIFont(name: "HelveticaNeue-Thin", size: 52)
        
        //Set parameters for the shown fact
        //The text of the label is a memeber of the factarray. The shown fact is choosen at random.
        FactLabel.text = factArray.randomFact()
        FactLabel.textColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1)
        FactLabel.font = UIFont(name: "HelveticaNeue-Thin", size: 26)
        FactLabel.textAlignment = .Center
        FactLabel.lineBreakMode = .ByWordWrapping
        FactLabel.numberOfLines = 0
        
        FactButton.setTitle("Tap here for more facts", forState: UIControlState.Normal)
        FactButton.setTitleColor(UIColor(red:0.61, green:0.61, blue:0.61, alpha:1), forState: UIControlState.Normal)
        FactButton.titleLabel!.font = UIFont(name: "HelveticaNeue-Thin", size: 22)
        
        sdtgb.text = "Swipe down to go back"
        sdtgb.textColor = UIColor(red: 0.61, green: 0.61, blue: 0.61, alpha: 1)
        sdtgb.font = UIFont(name: "HelveticaNeue-Thin", size: 22)
        
        //clear factArray when view gets loaded
        factArray.clearUsedNumberArray()
        
        }
    
    //Method to load the MenuViewController
    //This method will be used to go back to the menu when all the facts have been showed
    func goBack() -> (){
        
        //Clear the temporary array to prepare it for the next time the view gets loaded
        self.factArray.clearUsedNumberArray()
        
        //Herea bridging header is used to be able to load a VieWcontroller, which has been written in Objective-C.
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("MenuViewController") as! MenuViewController
        self.presentViewController(controller, animated: false, completion: nil)
    }
    
    //Method that will show a random fact
    @IBAction func showFact() {
        
        //Every fact will only be shown once. Here it checks if every fact in the array has already been shown or not
        if(!factArray.factsPassed()){
            FactLabel.text = factArray.randomFact()
        }
        else {
            
            //Set up alertview
            var alertview = JSSAlertView().show(self, title: "Woops!", text: "You've reached the end.", buttonText: "Back")
            
            //Change the font of the alertview
            alertview.setTitleFont("HelveticaNeue-Thin")
            alertview.setTextFont("HelveticaNeue-Thin")
            alertview.setButtonFont("HelveticaNeue-Thin")
            
            alertview.addAction(goBack)
        }
    }
}