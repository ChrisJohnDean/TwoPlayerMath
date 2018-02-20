//
//  Player.m
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithNumber:(NSMutableString*)playerNumber
{
    self = [super init];
    if (self) {
        _playerNumber = [NSMutableString stringWithFormat:@"Player %@:", playerNumber];
        _lives = 3;
    }
    return self;
}

@end
