//
//  ViewController.m
//  UI Test
//
//  Created by Vadim Zhepetov on 21/01/15.
//  Copyright (c) 2015 ask.fm. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+ChangeAnimations.h"

@interface ViewController ()

@property (nonatomic) UIImage *firstImage;
@property (nonatomic) UIImage *secondImage;

@end

@implementation ViewController

-(IBAction)popAnimationTriggered:(id)sender
{
    UIImage *nextImage = [self.popImageView.image isEqual:self.firstImage] ? self.secondImage : self.firstImage;
    [self.popImageView changeImageWithPop:nextImage];
}

-(IBAction)popRotateAnimationTriggered:(id)sender
{
    UIImage *nextImage = [self.popRotateImageView.image isEqual:self.firstImage] ? self.secondImage : self.firstImage;
    [self.popRotateImageView changeImageWithPopRotate:nextImage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstImage = [UIImage imageNamed:@"state_1"];
    self.secondImage = [UIImage imageNamed:@"state_2"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
