//
//  InterestsViewController.swift
//  Thomas Vagning
//
//  Created by Thomas Vagning on 09/06/15.
//  Copyright © 2015 Thomas Vagning. All rights reserved.
//

import Foundation

class InterestsViewController: UIViewController, UIScrollViewDelegate {
    
    var bg: UIImageView?
    var cardWheel: UIImageView?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg = UIImageView(frame: CGRect(x: -80, y: 0, width: 800*2, height: self.view.bounds.size.height))
        self.bg = bg
        bg.contentMode = .ScaleAspectFill
        bg.image = UIImage(named: "BG-low-blur.png")
        self.view.addSubview(bg)
    
        //Optimized for iPhone 6 screen
        let size = 2400.0
        let xpos = 188.0
        let ypos = 0.0
        
        let cardWheel = UIImageView(frame: CGRect(x: -(2400.0/2.0)+xpos, y: ypos, width: size, height: size))
        self.cardWheel = cardWheel
        cardWheel.clipsToBounds = true
        cardWheel.image = UIImage(named: "cardWheel@3x.png")
        cardWheel.contentMode = .ScaleAspectFill
        self.view.addSubview(cardWheel)
        
        let sv = UIScrollView(frame: self.view.bounds)
        sv.contentSize = CGSizeMake(320*5.86, self.view.bounds.size.height)
        sv.delegate = self
        sv.pagingEnabled = true
        self.view.addSubview(sv)
    
        
        
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        bg?.transform = CGAffineTransformMakeTranslation(-scrollView.contentOffset.x/3.0, 0)
        
        let x = CGFloat(-M_PI/180.0)
        let y = CGFloat(scrollView.contentOffset.x/8.335)
        cardWheel?.transform = CGAffineTransformMakeRotation(x * y)
    }
}