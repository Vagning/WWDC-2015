//
//  InterestsViewController.m
//  Thomas Vagning
//
//  Created by Thomas Vagning on 16/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

#import "InterestsViewController.h"

@interface InterestsViewController ()

@end

@implementation InterestsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bg = [[UIImageView alloc] initWithFrame:CGRectMake(-80, 0,800*2, self.view.bounds.size.height)];
    bg.contentMode = UIViewContentModeScaleAspectFill;
    bg.image = [UIImage imageNamed:@"BG-low-blur.png"];
    [self.view addSubview:bg];
    
    int size;
    int xpos;
    int ypos;
    
    //Optimized for iPhone 6 screen
    size = 2400;
    xpos = 188;
    ypos = -32;
        
    
    //Set up the cardwheel
    cardWheel = [[UIImageView alloc] initWithFrame:CGRectMake(-(2400/2)+xpos, ypos, size, size)];
    cardWheel.clipsToBounds = YES;
    cardWheel.image = [UIImage imageNamed:@"cardWheel@3x.png"];
    cardWheel.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:cardWheel];
    
    
    //Set up scrollview for the cardwheel that shows the different interest
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    sv.contentSize = CGSizeMake(320*5.86, self.view.bounds.size.height);
    sv.delegate = self;
    sv.pagingEnabled = YES;
    [self.view addSubview:sv];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    bg.transform = CGAffineTransformMakeTranslation(-scrollView.contentOffset.x/3, 0);
    
    cardWheel.transform = CGAffineTransformMakeRotation(-(M_PI/180)*(scrollView.contentOffset.x/8.335));
}

@end
