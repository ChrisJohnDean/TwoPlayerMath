//
//  Question.h
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger answer;

-(NSString*)generateQuestion;

@end
