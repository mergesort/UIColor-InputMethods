//
//  UIColor+InputMethods.m
//  Joseph Fabisevich
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import "UIColor+InputMethods.h"

@implementation UIColor (InputMethods)

+ (UIColor *)colorWithRedInt:(int)red greenInt:(int)green blueInt:(int)blue alphaInt:(int)alpha
{
    return [UIColor colorWithRedInt:(float)(red/255.0f) greenInt:(float)(green/255.0f) blueInt:(float)(blue/255.0f) alphaInt:(float)(alpha/255.0f)];
}

+ (UIColor *)colorWithHex:(int)hexValue
{
    return [self colorWithRedInt:((hexValue & 0xFF0000) >> 16) greenInt:((hexValue & 0xFF00) >> 8) blueInt:(hexValue & 0xFF) alphaInt:1.0];
}

@end
