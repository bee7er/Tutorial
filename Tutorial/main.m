//
//  main.m
//  Tutorial
//
//  Created by Brian Etheridge on 14/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Circle.h"
#import "Helper.h"

// Defining a constants
extern const int COUNT; // Would go into a header file
const int COUNT = 2;
// Alternative method but this involves compiler doing a literal substitution of the defined constant,
// so quite different implementation
#define COUNT 2


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Start ");
        
        // 1. Find the present working directory
        NSFileManager *filemgr;
        NSString *currentpath;
        
        filemgr = [[NSFileManager alloc] init];
        
        currentpath = [filemgr currentDirectoryPath];
        
        NSLog(@"Current path is %@", currentpath);
        
        // 2. Get a list of all files in PWD
        
        NSArray* files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:currentpath error:NULL];
        
        long x;
        x = sizeof files;
        
        NSLog(@"size of array : %lu ", x);
        // 3. Iterate the list and print list using NSLog
       
        
        for (int i = 0; i < x; i++)
        {
            // NSLog(@"> %@",files[i]);
            NSLog(@"%@", files[i]);
        }
        
        
        NSLog(@"Done");
        
        
    }
    return 0;
}


/*
 Square *square = [[Square alloc] initWithSize:8];
 
 // Now size is set with the initWithSize function
 //[square setSize:3];
 
 square.size = 16;
 int x = [square getArea];
 
 //int x = square.size;
 
 NSLog(@"The area value is %i", x);
 
 Helper *helper = [[Helper alloc] init];
 [helper printInfo:67 with: 54 and: 'd' also: @"Yellow"];
 
 NSLog(@"\n\n**** for loop ****");
 for (int i=1; i<=10; i++) {
 Square *square = [[Square alloc] initWithSize:i];
 NSLog(@"The area with size %i is %i", square.size, [square getArea]);
 }
 
 NSLog(@"\n\n**** while loop ****");
 int i=1;
 while (i<=10) {
 
 // Skip entries which are evenly divisible by 3
 if ((i % 3) == 0) {
 i++;
 continue;
 }
 // Exit when over 8
 if (i > 8) {
 break;
 }
 
 Square *square = [[Square alloc] initWithSize:i];
 NSLog(@"The area with size %i is %i", square.size, [square getArea]);
 i++;
 }
 
 NSLog(@"\n\n**** error handling ****");
 @try {
 Square *errorSquare = [[Square alloc] initWithSize:-1];
 NSLog(@"The area with size %i is %i", errorSquare.size, [errorSquare getArea]);
 }
 @catch (NSException *exception) {
 NSLog(@"Unexpected error: %@", [exception reason]);
 }
 @finally {
 NSLog(@"In finally");
 }
 
 NSLog(@"************** Objects");
 Shape *obj = [[Circle alloc] initWithDefault:4];
 obj.color = GREEN;
 
 NSLog(@"Color is %@", [obj printColor]);
 NSLog(@"Area is %i", [obj getArea]);
 
 NSLog(@"Done");
 */


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
