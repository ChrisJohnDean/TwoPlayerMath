//
//  AdditionQuestion.m
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(NSMutableString*)generateQuestion {
    self.question = [NSMutableString stringWithFormat:@"%ld + %ld ?", (long)self.rightValue, (long)self.leftValue];
    self.answer = self.leftValue + self.rightValue;
    return self.question;
}


@end
