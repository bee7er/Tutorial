//
//  Square.h
//  Tutorial
//
//  Created by Brian Etheridge on 16/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject
{
    // Member variables declared in the block
    int size;
}

// Member functions declared outside the block
-(id) initWithSize: (int)s;
-(void) setSize: (int)s;
-(int) getArea;

@end
