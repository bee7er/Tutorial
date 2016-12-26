//
//  Square.m
//  Tutorial
//
//  Created by Brian Etheridge on 16/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import "Square.h"

@implementation Square

@synthesize size;

-(id) initWithSize: (int) s
{
    // Validate the size we have been given
    if (s <= 0) {
        @throw [NSException exceptionWithName: @"InvalidSizeException" reason: @"Size was not a positive number" userInfo: nil];
    }
    self = [super init];
    
    if (self) {
        [self setSize:s];
    }
    
    return self;
}

-(id) initWithDefault: (int) d
{
    return [self initWithSize:d];
}

-(int) getArea
{
    return size * size;
}

@end
