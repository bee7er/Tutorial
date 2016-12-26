//
//  Circle.m
//  Tutorial
//
//  Created by Brian Etheridge on 26/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

-(id) initWithRadius: (int) r
{
    // Validate the radius we have been given
    if (r <= 0) {
        @throw [NSException exceptionWithName: @"InvalidSizeException" reason: @"Radius was not a positive number" userInfo: nil];
    }
    self = [super init];
    
    if (self) {
        [self setRadius:r];
    }
    
    return self;
}

-(id) initWithDefault: (int) d
{
    return [self initWithRadius:d];
}

-(int) getArea
{
    return 3.142 * radius * radius;
}

@end