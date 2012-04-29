//
//  NSString+MD5.m
//  EZCrypto
//
//  Created by Michael Dominick on 4/20/12.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>


@implementation NSString (MD5)

- (NSString *) toMD5 {
    const char* pntr = [self UTF8String];
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(pntr, strlen(pntr), md5Buffer);
       NSMutableString* outString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [outString appendFormat:@"%02x",md5Buffer[i]];
    }
    return outString;
}

@end
