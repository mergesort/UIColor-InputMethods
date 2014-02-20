//
//  UIColor+InputMethods.m
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import "UIColor+InputMethods.h"


@implementation UIColor (InputMethods)

+ (UIColor *)colorWithHex:(NSString *)hexString
{
	NSString *trimmedString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    //Only take the last 6 characters ever, so someone can prefix it with #, 0x, or whatever they want
    if (trimmedString.length != 6)
    {
        trimmedString = [trimmedString substringWithRange:NSMakeRange(trimmedString.length-6, 6)];
    }
    
    NSRange range = NSMakeRange(0, 2);
	NSString *red = [trimmedString substringWithRange:range];
	
	range.location = 2;
	NSString *green = [trimmedString substringWithRange:range];
	
	range.location = 4;
	NSString *blue = [trimmedString substringWithRange:range];
	
	unsigned int r, g, b;
	[[NSScanner scannerWithString:red] scanHexInt:&r];
	[[NSScanner scannerWithString:green] scanHexInt:&g];
	[[NSScanner scannerWithString:blue] scanHexInt:&b];

	return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

- (UIColor *)darkenedColorByPercent:(float)percentage
{
    CGFloat red = 0.0;
    CGFloat green = 0.0;
    CGFloat blue = 0.0;
    CGFloat alpha = 0.0;

    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    double multiplier = 1.0-percentage;
    
    return [UIColor colorWithRed:red*multiplier green:green*multiplier blue:blue*multiplier alpha:alpha];
}

- (UIColor *)tenPercentDarkerColor
{
    return [self darkenedColorByPercent:0.1];
}

- (UIColor *)twentyPercentDarkerColor
{
    return [self darkenedColorByPercent:0.2];
}

@end
