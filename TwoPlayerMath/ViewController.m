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
    NSInteger firstEntry;
    NSInteger secondEntry;
    
    switch(sender.tag) {
        case 0:
            
    }
}


@end
