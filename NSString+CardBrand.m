//
//  NSString+CardBrand.m
//  POPCardBrand
//
//  Created by Alex Di Mango
//  Copyright (c) 2015 Alex Di Mango. All rights reserved.
//

#import "NSString+CardBrand.h"

@implementation NSString (CardBrand)

- (NSString *)cardBrand {
    if ([self hasPrefix:@"34"] || [self hasPrefix:@"37"]) {
        return @"American Express";
    } else if ([self hasPrefix:@"60"] || [self hasPrefix:@"62"] || [self hasPrefix:@"64"] || [self hasPrefix:@"65"]) {
        return @"Discover";
    } else if ([self hasPrefix:@"35"]) {
        return @"JCB";
    } else if ([self hasPrefix:@"30"] || [self hasPrefix:@"36"] || [self hasPrefix:@"38"] || [self hasPrefix:@"39"]) {
        return @"Diners Club";
    } else if ([self hasPrefix:@"4"]) {
        return @"Visa";
    } else if ([self hasPrefix:@"5"]) {
        return @"MasterCard";
    } else {
        return @"Unknown";
    }
}

@end
