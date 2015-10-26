//
//  GameModel.h
//  2 Player Math
//
//  Created by Alex on 2015-10-26.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@interface GameModel : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, strong) Player *currentPlayer;

@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic) int currentAnswer;

- (NSString *)newQuestion;

- (NSString *)checkAnswer:(NSString *)answer;

- (NSString *)gameOver;

@end
