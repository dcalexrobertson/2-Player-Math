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
    self.answer.text = [self.answer.text stringByAppendingString:@"1"];
}
- (IBAction)two:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"2"];
}
- (IBAction)three:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"3"];
}
- (IBAction)four:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"4"];
}
- (IBAction)five:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"5"];
}
- (IBAction)six:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"6"];
}
- (IBAction)seven:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"7"];
}
- (IBAction)eight:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"8"];
}
- (IBAction)nine:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"9"];
}
- (IBAction)back:(id)sender {
    self.answer.text = [self.answer.text substringToIndex:[self.answer.text length] - 1];
}
- (IBAction)zero:(id)sender {
    self.answer.text = [self.answer.text stringByAppendingString:@"0"];
}
- (IBAction)clear:(id)sender {
    self.answer.text = @"";
}

@end
