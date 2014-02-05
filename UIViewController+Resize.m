//
//  UIViewController+Resize.m
//  Morr
//
//  Created by Michael Dominick on 1/29/14.
//  Copyright (c) 2014 Morr. All rights reserved.
//

#import "UIViewController+Resize.h"

@implementation UIViewController (Resize)

- (void)fixPositionOfSubView:(UIView *)someView
{
    if ([UIScreen mainScreen].bounds.size.height < 481)
    {
        //[someView setFrame: CGRectMake(someView.frame.origin.x, someView.frame.origin.y - someView.frame.size.height - 88, someView.frame.size.width, someView.frame.size.height)];
        [someView setFrame: CGRectMake(someView.frame.origin.x, 10, someView.frame.size.width, someView.frame.size.height)];

        NSLog(@"someView.frame.y === %f", someView.frame.origin.y);
    }
    else
    {
        // no need to edit newer devices
    }
}

@end
