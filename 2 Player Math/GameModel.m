//
//  GameModel.m
//  2 Player Math
//
//  Created by Alex on 2015-10-26.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
    }
    return self;
}

- (NSString *)newQuestionForPlayer:(Player *)player
{
    self.firstNumber = 1 + arc4random_uniform(21);
    self.secondNumber = 1 + arc4random_uniform(21);
    self.currentAnswer = self.firstNumber + self.secondNumber;
    
    return [NSString stringWithFormat:@"%@ : %d + %d?", player.name, self.firstNumber, self.secondNumber];
}

- (NSString *)checkAnswer:(NSString *)answer forPlayer:(Player *)player
{
    
    if ([answer intValue] == self.currentAnswer) {
        return @"That's correct!";
    } else {
        [player loseLife];
        if (player.life == 0) {
            [self gameOver];
            return @"";
        } else {
            return @"That's wrong!";
        }
    }
}

- (NSString *)gameOver
{
    
    if (self.player1.life == 0) {
        return [NSString stringWithFormat:@"%@ wins!", self.player1.name];
    } else {
        return [NSString stringWithFormat:@"%@ wins!", self.player2.name];
    }
    
}

@end
