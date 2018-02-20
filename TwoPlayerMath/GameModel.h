//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "AdditionQuestion.h"

@interface GameModel : NSObject

@property (nonatomic) Player* playerOne;
@property (nonatomic) Player* playerTwo;
@property (nonatomic) Player* currentPlayer;
@property (nonatomic) AdditionQuestion* anotherQuestion;

-(void)wrongAnswer:(Player*)player;
-(NSMutableString*)playerAndQuestion;
-(void)answerQuestionWith:(NSInteger)answer;
-(BOOL)isGameOver;

@end
