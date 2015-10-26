//
//  GameModel.m
//  2 Player Math
//
//  Created by Alex on 2015-10-26.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@interface GameModel ()

@property (nonatomic, strong) NSArray *operations;

@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
        _operations = @[@"+", @"-", @"*"];
        
        _currentPlayer = self.currentPlayer;
    }
    return self;
}

- (NSString *)newQuestion
{
    self.firstNumber = 1 + arc4random_uniform(21);
    self.secondNumber = 1 + arc4random_uniform(21);
    int operation = arc4random_uniform([self.operations count]);
    
    //possiblity of diffrent math operations
    if ([self.operations[operation] isEqualToString:@"+"]) {
        self.currentAnswer = self.firstNumber + self.secondNumber;
    } else if ([self.operations[operation] isEqualToString:@"-"]) {
        
        //avoid negative answers
        if (self.secondNumber > self.firstNumber) {
            int holder = self.secondNumber;
            self.secondNumber = self.firstNumber;
            self.firstNumber = holder;
        }
        
        
        self.currentAnswer = self.firstNumber - self.secondNumber;
    } else if ([self.operations[operation] isEqualToString:@"*"]) {
        self.currentAnswer = self.firstNumber * self.secondNumber;
    }
    
    if (self.currentPlayer != self.player1) {
        self.currentPlayer = self.player1;
    } else {
        self.currentPlayer = self.player2;
    }
    
    return [NSString stringWithFormat:@"%@ : %d %@ %d?", self.currentPlayer.name, self.firstNumber, self.operations[operation], self.secondNumber];
}

- (NSString *)checkAnswer:(NSString *)answer
{
    
    if ([answer intValue] == self.currentAnswer) {
        return @"That's correct!";
    } else {
        [self.currentPlayer loseLife];
        if (self.currentPlayer.life == 0) {
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
        return [NSString stringWithFormat:@"%@ wins!", self.player2.name];
    } else {
        return [NSString stringWithFormat:@"%@ wins!", self.player1.name];
    }
    
}

@end
