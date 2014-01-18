//
//  UIColor+InputMethods.m
//  DoneNotDone
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 betaworks. All rights reserved.
//

#import "UIColor+InputMethods.h"


@implementation UIColor (InputMethods)

+ (UIColor *)colorWithRedInt:(int)red greenInt:(int)green blueInt:(int)blue alphaInt:(int)alpha
{
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:(float)(alpha/255.0f)];
}

+ (UIColor *)colorWithHex:(NSString *)hexString
{
	NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
	else if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    else if ([cString length] < 6 || [cString length] != 6)
    {
         return [UIColor whiteColor];
    }
    
	NSRange range;
	range.location = 0;
	range.length = 2;
	NSString *rString = [cString substringWithRange:range];
	
	range.location = 2;
	NSString *gString = [cString substringWithRange:range];
	
	range.location = 4;
	NSString *bString = [cString substringWithRange:range];
	
	unsigned int r, g, b;
	[[NSScanner scannerWithString:rString] scanHexInt:&r];
	[[NSScanner scannerWithString:gString] scanHexInt:&g];
	[[NSScanner scannerWithString:bString] scanHexInt:&b];
	
	return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

+ (UIColor *)colorWithColor:(UIColor *)color alpha:(CGFloat)alpha
{
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIColor colorWithRed:components[0] green:components[1] blue:components[2] alpha:alpha];
}

@end
