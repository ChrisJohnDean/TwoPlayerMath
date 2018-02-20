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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [[GameModel alloc] init];
    NSString* fullQuestion = [self.gameModel playerAndQuestion];
    self.questionLabel.text = fullQuestion;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)submitAnswer:(id)sender {
    
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
