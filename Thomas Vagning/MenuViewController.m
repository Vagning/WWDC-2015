//
//  MenuViewController.m
//  Thomas Vagning
//
//  Created by Thomas Vagning on 16/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//
//  Danish comments may oucur, but only for personal refernce
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set parameters for the Apple Logo
    _AppleLogo2.text = @"";
    _AppleLogo2.textColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    [_AppleLogo2 setFont:[UIFont systemFontOfSize:72]];
    
    //Set parameters for the titles
    [_About setTitle:@"About me" forState:UIControlStateNormal];
    _About.tintColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    _About.titleLabel.font =[UIFont fontWithName:@"HelveticaNeue-Thin" size:52];
    
    [_Interests setTitle:@"Interests" forState:UIControlStateNormal];
    _Interests.tintColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    _Interests.titleLabel.font =[UIFont fontWithName:@"HelveticaNeue-Thin" size:52];
    
    [_Projects setTitle:@"Projects" forState:UIControlStateNormal];
    _Projects.tintColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    _Projects.titleLabel.font =[UIFont fontWithName:@"HelveticaNeue-Thin" size:52];
    
    [_Facts setTitle:@"Facts" forState:UIControlStateNormal];
    _Facts.tintColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    _Facts.titleLabel.font =[UIFont fontWithName:@"HelveticaNeue-Thin" size:52];
    
}

@end
