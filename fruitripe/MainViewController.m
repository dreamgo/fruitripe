//
//  MainViewController.m
//  fruitripe
//
//  Created by Ted Lee on 3/2/14.
//  Copyright (c) 2014 Ted Lee. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.frame = CGRectMake(0, 0, 320, 460);
    self.view.backgroundColor = [UIColor whiteColor];
    DCPathButton *dcPathButton = [[DCPathButton alloc]
                                  initDCPathButtonWithSubButtons:6
                                  totalRadius:120
                                  centerRadius:33
                                  subRadius:25
                                  centerImage:@"center-paw"
                                  centerBackground:nil
                                  subImages:^(DCPathButton *dc){
                                      [dc subButtonImage:@"strawberry512" withTag:0];
                                      [dc subButtonImage:@"orange512" withTag:1];
                                      [dc subButtonImage:@"apple512" withTag:2];
                                      [dc subButtonImage:@"lemon512" withTag:3];
                                      [dc subButtonImage:@"peach512" withTag:4];
                                      [dc subButtonImage:@"pear512" withTag:5];
                                  }
                                  subImageBackground:nil
                                  inLocationX:160 locationY:265 toParentView:self.view];
    dcPathButton.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - DCPathButton delegate

- (void)button_0_action{
    NSLog(@"Button Press Tag 0!!");
    [self performSegueWithIdentifier:@"strawberry" sender:self];
}

- (void)button_1_action{
    NSLog(@"Button Press Tag 1!!");
}

- (void)button_2_action{
    NSLog(@"Button Press Tag 2!!");
}

- (void)button_3_action{
    NSLog(@"Button Press Tag 3!!");
}

- (void)button_4_action{
    NSLog(@"Button Press Tag 4!!");
}

- (void)button_5_action{
    NSLog(@"Button Press Tag 5!!");
}

@end

