//
//  NSString+Utils.m
//  spindle
//
//  Created by Michael on 12/22/13.
//  Copyright (c) 2013 fingertiptech. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (BOOL)isNotEmpty
{
    BOOL isValid = NO;
    if (![self isKindOfClass:[NSNull class]]
        && ![self isEqualToString:@""])
    {
        isValid = YES;
    }
    
    return isValid;
}



@end
