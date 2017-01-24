//
//  ViewController.m
//  ExerciseThree
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int number ;
    bool numberEven;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    
    
    
    number = [self getRandomNumberBetween:0 to:1000];
    if (number%2 ==0) {
        numberEven = true;
    }else{
        numberEven = false;
    }
    NSString *message = [NSString stringWithFormat:@"Questo numero è pari? %i",number];
    [self.numberRandomGenerate setText:message];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showAlert:(NSString *) answer{
    UIAlertController*alertViewController = [UIAlertController alertControllerWithTitle:@"******" message:answer preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
    }];
    [alertViewController addAction:okAction];
    [self presentViewController:alertViewController animated:true completion:nil];
    

}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}


-(IBAction) buttonYesPressed:(id)sender{
    if (numberEven) {
        [self showAlert:@"Esato!"];
    }else{
        [self showAlert:@"Errato!"];
    }
    }

-(IBAction)buttonNoPressed:(id)sender{
    if(!numberEven){
        [self showAlert:@"Esato!"];
    }else{
        [self showAlert:@"Errato!"];
    }
    
}


@end
