//
//  ViewController.m
//  ExerciseTwo
//
//  Created by Mariana Anitoiu on 23/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

NSString *stringNumberEven,*stringNumberOdd;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)insertNumber :(int)number{
    
    if(number%2 ==0){
        stringNumberEven = [NSString stringWithFormat:@"You add a even number %i",number];
        [self.userNumberLable setText:stringNumberEven];
        NSLog(@"You add a even number %@",stringNumberEven);
    }else{
        stringNumberOdd = [NSString stringWithFormat:@"You add an odd number %i", number];
        [self.userNumberLable setText:stringNumberOdd];
        NSLog(@"You add an odd number %@",stringNumberOdd);
    }
    //[self.userNumberTextField setText:number];
    //[self.userNumberTextField setText:[NSString stringWithFormat:@"%@",number]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)userNumberTextFieldDidEndOnExit:(id)sender{
    NSLog(@"userNumberTextFieldDidEndOnExit");
}

-(IBAction)userNumberTextFieldEditingDidEnd:(UITextField *)sender{
    int number = [sender.text intValue];
    
    NSLog(@"userNumberTextFieldEditingDidEnd");
    NSLog(@"testo scritto dall'utente: %@", sender.text);
    [self insertNumber:number];
}


@end
