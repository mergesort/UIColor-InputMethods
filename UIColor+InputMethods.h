//
//  UIColor+InputMethods.h
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (InputMethods)

+ (UIColor *)colorWithHex:(NSString *)hexString;

- (UIColor *)darkenedColorByPercent:(float)percentage;
- (UIColor *)tenPercentDarkerColor;
- (UIColor *)twentyPercentDarkerColor;

@end
