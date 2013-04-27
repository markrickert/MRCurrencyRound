//
//  MRCurrencyRound.m
//
//  Created by  on 11/24/11.
//  Copyright (c) 2011 Mark Rickert. All rights reserved.
//

#import "MRCurrencyRound.h"

@implementation NSNumber (MRCurrencyRound)

NSNumberFormatter *sharedNumberFormatterCurrencyStyle = nil;
static NSString *kSharedNumberFormatterCurrencyStyleLock = @"kSharedNumberFormatterCurrencyStyleLock";

-(NSNumber *)currencyRound
{
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
  [formatter setMaximumFractionDigits:2];
  [formatter setRoundingMode: NSNumberFormatterRoundHalfUp];

  NSString *formattedString = [formatter stringFromNumber:[NSNumber numberWithFloat:[self floatValue]]];

  return [NSNumber numberWithFloat:[formattedString floatValue]];
}

-(NSString *) currencyString
{
    NSNumberFormatter *formatter = nil;
    @synchronized(kSharedNumberFormatterCurrencyStyleLock) {
        if (sharedNumberFormatterCurrencyStyle == nil) {
            sharedNumberFormatterCurrencyStyle = [[NSNumberFormatter alloc] init];
            sharedNumberFormatterCurrencyStyle.numberStyle = NSNumberFormatterCurrencyStyle;
        }
    }
    formatter = sharedNumberFormatterCurrencyStyle;

    return [formatter stringFromNumber:self];
}

@end
