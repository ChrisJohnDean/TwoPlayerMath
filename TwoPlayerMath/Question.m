//
//  Question.m
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "Question.h"

@implementation Question


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.leftValue = arc4random_uniform(20) + 1;
        self.rightValue = arc4random_uniform(20) + 1;
        
    }
    return self;
}

-(void)generateQuestion{}

@end
