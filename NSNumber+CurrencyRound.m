//
//  NSNumber+CurrencyRound.m
//
//  Created by  on 11/24/11.
//  Copyright (c) 2011 Mark Rickert. All rights reserved.
//

#import "NSNumber+CurrencyRound.h"

@implementation NSNumber (CurrencyRound)

-(NSNumber *)currencyRound
{
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
	[formatter setMaximumFractionDigits:2];
	[formatter setRoundingMode: NSNumberFormatterRoundHalfUp];

	NSString *formattedString = [formatter stringFromNumber:[NSNumber numberWithFloat:[self floatValue]]];
	[formatter release];

	return [NSNumber numberWithFloat:[formattedString floatValue]];
}

@end
