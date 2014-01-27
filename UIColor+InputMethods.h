//
//  UIColor+InputMethods.h
//  DoneNotDone
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 betaworks. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (InputMethods)

+ (UIColor *)colorWithRedInt:(int)red greenInt:(int)green blueInt:(int)blue alphaInt:(int)alpha;
+ (UIColor *)colorWithHex:(NSString *)hexString;
+ (UIColor *)colorWithColor:(UIColor *)color alpha:(CGFloat)alpha;
- (UIColor *)darkenedColorByPercent:(float)percentage;
- (UIColor *)tenPercentDarkerColor;

@end
