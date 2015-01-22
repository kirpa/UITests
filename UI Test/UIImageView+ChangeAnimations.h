//
//  UIImageView+ChangeAnimations.h
//  UI Test
//
//  Created by Vadim Zhepetov on 21/01/15.
//  Copyright (c) 2015 ask.fm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ChangeAnimations)

- (void)changeImageWithPop:(UIImage *)image;
- (void)changeImageWithPopRotate:(UIImage *)image;

@end
