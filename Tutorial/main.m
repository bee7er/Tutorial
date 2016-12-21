//
//  main.m
//  Tutorial
//
//  Created by Brian Etheridge on 14/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Helper.h"

// Defining a constants
extern const int COUNT; // Would go into a header file
const int COUNT = 2;
// Alternative method but this involves compiler doing a literal substitution of the defined constant,
// so quite different implementation
#define COUNT 2


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Square *square = [[Square alloc] initWithSize:8];
        
        // Now size is set with the initWithSize function
        //[square setSize:3];
        
        square.size = 16;
        int x = [square getArea];
        
        //int x = square.size;
        
        NSLog(@"The area value is %i", x);
        
        Helper *helper = [[Helper alloc] init];
        [helper printInfo:67 with: 54 and: 'd' also: @"Yellow"];
        
        NSLog(@"Done");
    }
    return 0;
}

/*
int doSomeTestPrints(int argc, const char * argv[]) {

        NSString *name = @"Piggy";
        NSLog(@"Your name is %@", name);
        
        int x = COUNT;
        if (++x > COUNT) {
            NSLog(@"At a==%i", ++x);
            
            NSLog(@"At b==%i", x);
        }
        x++;
        
        
        NSLog(@"Command line arguments: ");
        if (argc) {
            for (int i=0; i<argc; i++) {
                printf(argv[i]);
                
                printf("\n");
                
            }
            
        }
        
        // Input some data
        int pockets = 0;
        NSLog(@"How many pockets in your jacket?");
        scanf("%i", &pockets);
        NSLog(@"You reckon you have %i pockets in your jacket", pockets);
        
        NSLog(@"Hello, World");
        NSLog(@"Storage size for int : %lu \n", sizeof(int));
        NSLog(@"Done");
}
 */
