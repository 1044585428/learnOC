//
//  UIColor+HexString.m
//  oc-learn
//
//  Created by 崔子剑 on 2023/12/29.
//

#import "UIColor+HexString.h"

@implementation UIColor(HexString)
+ (UIColor *)colorWithHexString:(NSString *)hexString{
    if([hexString hasPrefix: @"#"]){
        hexString = [hexString substringFromIndex:1];
    }
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    return nil;
}

@end
