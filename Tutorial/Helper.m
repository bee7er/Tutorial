//
//  Helper.m
//  Tutorial
//
//  Created by Brian Etheridge on 21/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import "Helper.h"

@implementation Helper

-(id) printInfo: (int) value with: (int) value2 and: (char) value3 also: (NSString *) str
{
    printf("\nValue=%i\n\n", value);
    printf("\nValue2=%i\n\n", value2);
    
    NSLog(@"Print char %c", value3);
    
    NSLog(@"Print Object %@", str);
    
    NSLog(@"Value 1 is %i", value);
    NSLog(@"Value 2 is %i", value2);
    
    return self;
}

@end
