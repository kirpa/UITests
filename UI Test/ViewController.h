//
//  ViewController.h
//  UI Test
//
//  Created by Vadim Zhepetov on 21/01/15.
//  Copyright (c) 2015 ask.fm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+ChangeAnimations.h"

@interface ViewController : UIViewController

@property (nonatomic) IBOutlet UIImageView      *popImageView;
@property (nonatomic) IBOutlet UIImageView      *popRotateImageView;

-(IBAction)popAnimationTriggered:(id)sender;
-(IBAction)popRotateAnimationTriggered:(id)sender;

@end

