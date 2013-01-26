//
//  CustomFont.m
//  Dujour
//
//  Created by Everton Fraga on 1/26/13.
//
//

#import "CustomFont.h"

@implementation CustomFont

+ (UIFont *)fontsWithNameAndSize:(NSDictionary *)data {
    for (NSString *k in data) {
        
        @try {
            return [UIFont fontWithName:k size:[data[k] floatValue]];
        }
        @catch (NSException *exception) {
            NSLog(@"Missed font %@", k);
        }
        
    }
    
}

@end;
