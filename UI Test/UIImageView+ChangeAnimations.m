//
//  UIImageView+ChangeAnimations.m
//  UI Test
//
//  Created by Vadim Zhepetov on 21/01/15.
//  Copyright (c) 2015 ask.fm. All rights reserved.
//

#import "UIImageView+ChangeAnimations.h"

@implementation UIImageView (ChangeAnimations)

- (void)changeImageWithPop:(UIImage *)image
{
    [UIView animateWithDuration:0.1
                     animations:^{
                         self.transform = CGAffineTransformMakeScale(0.1, 0.1);
                     }
                     completion:^(BOOL scaleCompleted){
                         if (scaleCompleted){
                             self.transform = CGAffineTransformIdentity;
                             self.image = image;
                             [UIView animateWithDuration:0.09
                                              animations:^{
                                                  self.transform = CGAffineTransformMakeScale(1.2, 1.2);
                                              }
                                              completion:^(BOOL popCompleted){
                                                  if (popCompleted){
                                                      [UIView animateWithDuration:0.02
                                                                       animations:^{
                                                                           self.transform = CGAffineTransformIdentity;
                                                      }];
                                                  }
                                              }];
                         }
                     }];
}

- (void)changeImageWithPopRotate:(UIImage *)image
{
    const CGFloat rotation = 0.5;
    [UIView animateWithDuration:0.3
                     animations:^{
                         CGAffineTransform transform = CGAffineTransformMakeScale(0.1, 0.1);
                         self.transform = CGAffineTransformRotate(transform, rotation);
                     }
                     completion:^(BOOL scaleCompleted){
                         if (scaleCompleted){
                             self.image = image;
                             [UIView animateWithDuration:0.09
                                              animations:^{
                                                  CGAffineTransform transform = CGAffineTransformMakeScale(1.2, 1.2);
                                                  self.transform = CGAffineTransformRotate(transform, -rotation);
                                              }
                                              completion:^(BOOL popCompleted){
                                                  if (popCompleted){
                                                      [UIView animateWithDuration:0.1
                                                                       animations:^{
                                                                           self.transform = CGAffineTransformIdentity;
                                                                       }];
                                                  }
                                              }];
                         }
                     }];
}

@end
