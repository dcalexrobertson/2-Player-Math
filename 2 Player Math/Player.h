//
//  Player.h
//  2 Player Math
//
//  Created by Alex on 2015-10-26.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int life;

- (instancetype)initWithName:(NSString *)name;

- (void)loseLife;

@end
