//
//  UIColor+HexString.h
//  oc-learn
//
//  Created by 崔子剑 on 2023/12/29.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (HexString)
+(UIColor*)colorWithHexString:(NSString*)hexString;

@end

NS_ASSUME_NONNULL_END
