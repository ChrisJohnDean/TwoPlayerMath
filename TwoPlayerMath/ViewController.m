//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Chris Dean on 2018-02-19.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ViewController.h"
#import "AdditionQuestion.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic) GameModel* gameModel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UIButton *enterLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [[GameModel alloc] init];
    NSString* fullQuestion = [self.gameModel playerAndQuestion];
    self.questionLabel.text = fullQuestion;
    self.playerOneScore.text = @"Player 1: 3";
    self.playerTwoScore.text = @"Player 2: 3";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)submitAnswer:(id)sender {
    NSInteger answer = [self.answerLabel.text integerValue];
    [self.gameModel answerQuestionWith:answer];
    self.answerLabel.text = @"";
    self.playerOneScore.text = [NSString stringWithFormat:@"Player 1: %d", self.gameModel.playerOne.lives];
    self.playerTwoScore.text = [NSString stringWithFormat:@"Player 2: %d", self.gameModel.playerTwo.lives];
   
    if(self.gameModel.isGameOver) {
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"GAME OVER!"
                                                                       message:@"Play again?"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  self.gameModel = [[GameModel alloc] init];
                                                                  NSString* fullQuestion = [self.gameModel playerAndQuestion];
                                                                  self.questionLabel.text = fullQuestion;
                                                                  self.playerOneScore.text = @"Player 1: 3";
                                                                  self.playerTwoScore.text = @"Player 2: 3";
                                                              }];
        
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:cancel];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }

    
    NSString* fullQuestion = [self.gameModel playerAndQuestion];
    self.questionLabel.text = fullQuestion;
    
}

- (IBAction)selectNumbers:(UIButton*)sender {
    
    switch(sender.tag) {
        case 0:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"0"];
            break;
        case 1:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"1"];
            break;
        case 2:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"2"];
            break;
        case 3:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"3"];
            break;
        case 4:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"4"];
            break;
        case 5:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"5"];
            break;
        case 6:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"6"];
            break;
        case 7:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"7"];
            break;
        case 8:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"8"];
            break;
        case 9:
            self.answerLabel.text = [NSString stringWithFormat:@"%@%@", self.answerLabel.text, @"9"];
            break;
    }
}


@end
