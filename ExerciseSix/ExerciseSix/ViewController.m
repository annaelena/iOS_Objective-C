//
//  ViewController.m
//  ExerciseSix
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonSave:(id)sender{
    
    NSLog(@"%@\n%@\n%@", [self.userName text],[self.userSurname text],[self.userAge text]);
    
}

@end
