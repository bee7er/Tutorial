//
//  Square.m
//  Tutorial
//
//  Created by Brian Etheridge on 16/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id) initWithSize:(int)s
{
    self = [super init];
    
    if (self) {
        [self setSize:s];
    }
    
    return self;
}

-(void) setSize:(int)s
{
    size = s;
}

-(int) getArea
{
    return size * size;
}

@end
