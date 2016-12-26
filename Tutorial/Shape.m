//
//  Shape.m
//  Tutorial
//
//  Created by Brian Etheridge on 26/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import "Shape.h"

@implementation Shape

@synthesize color;

-(NSString *) printColor
{
    switch (color) {
        case RED:
            return @"Red";
        case BLUE:
            return @"Blue";
        case GREEN:
            return @"Green";
        default:
            return @"Unknown";
    }
}

-(id) initWithDefault: (int) d
{
    return self;
}

@end