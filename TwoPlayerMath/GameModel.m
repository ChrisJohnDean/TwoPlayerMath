//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playerOne = [[Player alloc] initWithNumber:[NSMutableString stringWithString:@"1"]];
        _playerTwo = [[Player alloc] initWithNumber:[NSMutableString stringWithString:@"2"]];
        self.currentPlayer = self.playerOne;
    }
    return self;
}

-(void)wrongAnswer:(Player*)player {
    player.lives -= 1;
}

-(NSMutableString*)playerAndQuestion {
    
    self.anotherQuestion = [[AdditionQuestion alloc] init];
    NSMutableString* questionString = [self.anotherQuestion generateQuestion];
    NSMutableString* playerAndQuestionString;
    playerAndQuestionString = [NSMutableString stringWithFormat:@"%@ %@", self.currentPlayer.playerNumber, questionString];
    return playerAndQuestionString;
}

-(void)changeTurn {
    
    if([self.currentPlayer.playerNumber isEqualToString:@"Player 1:"]) {
        self.currentPlayer = self.playerTwo;
    } else {
        self.currentPlayer = self.playerOne;
    }
}

-(void)answerQuestionWith:(NSInteger)answer {
    if(answer != self.anotherQuestion.answer) {
        self.currentPlayer.lives -= 1;
    }
    
    [self changeTurn];
}

-(BOOL)isGameOver {
    if(self.playerOne.lives < 0) {
        return true;
    } else if(self.playerTwo < 0) {
    return true;
    } else {
    return false;
    }
}

@end
















