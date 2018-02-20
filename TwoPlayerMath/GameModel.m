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
        _playerOne = [[Player alloc] init];
        _playerTwo = [[Player alloc] init];
    }
    return self;
}

-(void)wrongAnswer:(Player*)player {
    player.lives -= 1;
}

@end
