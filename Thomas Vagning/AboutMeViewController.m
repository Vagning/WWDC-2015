//
//  AboutMeViewController.m
//  Thomas Vagning
//
//  Created by Thomas Vagning on 16/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

#import "AboutMeViewController.h"

@interface AboutMeViewController ()

@end

@implementation AboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set parameters for the title
    _AboutMe.text = @"About Me";
    _AboutMe.textColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    [_AboutMe setFont: [UIFont fontWithName:@"HelveticaNeue-Thin" size:52]];
    
    _dtbam.text = @"Swipe down to go back";
    _dtbam.textColor = [UIColor colorWithRed:155/255.0f green:155/255.0f blue:155/255.0f alpha:1.0f];
    [_dtbam setFont: [UIFont fontWithName:@"HelveticaNeue-Thin" size:22]];
    
}

@end
