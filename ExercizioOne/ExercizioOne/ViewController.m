//
//  ViewController.m
//  ExercizioOne
//
//  Created by Mariana Anitoiu on 23/01/17.
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


-(void)viewDidAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)insrisciNome : (NSString *)nome{
    [self.userNameTextField setText:nome];
}



-(IBAction)userNameTextFieldDidEndOnExit:(id)sender{
    NSLog(@"userNameTextFieldDidEndOnExit");
}
-(IBAction)userNameTextFieldEditingDidEnd:(UITextField *)sender{
    NSLog(@"userNameTextFieldEditingDidEnd");
    NSLog(@"testo scritto dall'utente: %@", sender.text);
    [self.userNameLable setText:sender.text];
    
}


@end
