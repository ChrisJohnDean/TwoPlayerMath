//
//  Player.h
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int lives;
@property (nonatomic) NSMutableString* playerNumber;

- (instancetype)initWithNumber:(NSMutableString*)playerNumber;

@end
