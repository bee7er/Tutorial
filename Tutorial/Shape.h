//
//  Shape.h
//  Tutorial
//
//  Created by Brian Etheridge on 26/12/2016.
//  Copyright © 2016 Brian Etheridge. All rights reserved.
//

#define RED 1
#define BLUE 2
#define GREEN 3

#import <Foundation/Foundation.h>

@interface Shape : NSObject
{
    // Member variables declared in the block
}
// Properties outside the block - see synthesize in the .m file
@property int color;

// Member functions declared outside the block
-(id) initWithDefault: (int)d;
-(NSString *)printColor;
-(int) getArea;

@end
