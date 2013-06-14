//
//  UIColor+InputMethods.h
//  Joseph Fabisevich
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (InputMethods)

+ (UIColor *)colorWithRedInt:(int)red greenInt:(int)green blueInt:(int)blue alphaInt:(int)alpha;
+ (UIColor *)colorWithHex:(int)hexValue;

@end
