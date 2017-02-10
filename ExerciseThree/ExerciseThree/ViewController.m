//
//  ViewController.m
//  ExerciseThree
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"
#import "ListAnswersTableViewController.h"

#define RESULT @"result"
#define DATE @"date"

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
    [self newNumber];
    
}

-(void) newNumber {
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
    [self saveResult:answer];
    

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
    
    [self newNumber];
}

-(IBAction)buttonNoPressed:(id)sender{
    if(!numberEven){
        [self showAlert:@"Esato!"];
    }else{
        [self showAlert:@"Errato!"];
    }
    
    [self newNumber];
}



-(void) saveResult:(NSString *) risposta{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd//hh:mm:ss"];
    
    NSDictionary *dictionary = @{DATE: [dateFormatter stringFromDate:[NSDate date]], RESULT: risposta};
    
    NSMutableArray *result = [self getRisposte];
    
    [result addObject:dictionary];
    
    [[NSUserDefaults standardUserDefaults] setObject:result forKey:RESULT];
    [[NSUserDefaults standardUserDefaults] synchronize];
}




// questo metodo mi ritorna l'array salvato in memoria!!!
-(NSArray *)getRisposte{
    NSMutableArray *result = [[[NSUserDefaults standardUserDefaults] objectForKey:RESULT]mutableCopy];
    
    if( result == nil){
        //creato l'array delle risposte vuoto.
        result = [[NSMutableArray alloc] init];
    }

    return result;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ListAnswersTableViewController *list = segue.destinationViewController;
    
    [list setRiposta:[self getRisposte]];
}


@end
