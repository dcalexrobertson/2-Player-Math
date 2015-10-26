//
//  ViewController.m
//  2 Player Math
//
//  Created by Alex on 2015-10-26.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *player1;
@property (weak, nonatomic) IBOutlet UILabel *player2;
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UILabel *alerts;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GameModel *newGame = [[GameModel alloc] init];
    self.player1.text = [NSString stringWithFormat:@"%@ : %d/3", newGame.player1.name, newGame.player1.life];
    self.player2.text = [NSString stringWithFormat:@"%@ : %d/3", newGame.player2.name, newGame.player2.life];
    
    self.question.text = [newGame newQuestionForPlayer:newGame.player1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)one:(id)sender {
}
- (IBAction)two:(id)sender {
}
- (IBAction)three:(id)sender {
}
- (IBAction)four:(id)sender {
}
- (IBAction)five:(id)sender {
}
- (IBAction)six:(id)sender {
}
- (IBAction)seven:(id)sender {
}
- (IBAction)eight:(id)sender {
}
- (IBAction)nine:(id)sender {
}
- (IBAction)back:(id)sender {
}
- (IBAction)zero:(id)sender {
}
- (IBAction)clear:(id)sender {
}

@end
