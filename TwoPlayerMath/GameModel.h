//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

typedef NS_ENUM(NSInteger, WhichPlayer) {
    PlayerOne,
    PlayerTwo,
};

@interface GameModel : NSObject

@property (nonatomic) Player* playerOne;
@property (nonatomic) Player* playerTwo;
@property (nonatomic) WhichPlayer currentPlayer;

-(void)wrongAnswer:(Player*)player;

@end
