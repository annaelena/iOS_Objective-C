//
//  ViewController.m
//  ExerciseFive
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *arrayName;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrayName = [[NSMutableArray alloc]init];
    
    [self createArray];
    
    [self orderArray];
    
    [self dividedArray];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createArray{
    
    [arrayName addObject:@"Freddie Campbell"];
    [arrayName addObject:@"Krista Kim"];
    [arrayName addObject:@"Merle Hubbard"];
    [arrayName addObject:@"Lorraine Weber"];
    [arrayName addObject:@"Lorenzo Greene"];
    [arrayName addObject:@"Sandra Brock"];
    [arrayName addObject:@"Nichole Hines"];
    [arrayName addObject:@"Floyd Clarke"];
    [arrayName addObject:@"Andrea Ramsey"];
    [arrayName addObject:@"Marcus Reid"];
    [arrayName addObject:@"Jacob Garza"];
    [arrayName addObject:@"Peter Herrera"];
    [arrayName addObject:@"Glenn Horton"];
    [arrayName addObject:@"Francis Mack"];
    [arrayName addObject:@"Yvette Farmer"];
    [arrayName addObject:@"Evan	Hughes"];
    [arrayName addObject:@"Shelley Lane"];
    [arrayName addObject:@"Gladys Carroll"];
    [arrayName addObject:@"Stella Thornton"];
    [arrayName addObject:@"Mindy Wilkerson"];
    [arrayName addObject:@"Beth	Diaz"];
    [arrayName addObject:@"Everett Mckinney"];
    [arrayName addObject:@"Audrey Cooper"];
    [arrayName addObject:@"Christie Sutton"];
    [arrayName addObject:@"Timothy Walters"];
    
    NSLog(@"%@",arrayName);
}

-(void)orderArray{
    NSArray *arrayOrder = [arrayName sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2){
        
        return [obj1 compare:obj2];
    }];
    NSLog(@"%@",arrayOrder);
    
}

-(void) dividedArray{
    NSMutableArray *firstName = [[NSMutableArray alloc]init];
    NSMutableArray *lastName = [[NSMutableArray alloc]init];
    
    for(id object in arrayName){
        NSArray *split = [(NSString *)object componentsSeparatedByString:@" "];
        [firstName addObject:split[0]];
        [lastName addObject:split[1]];
    }
    
    NSLog(@"%@",firstName);
    NSLog(@"%@",lastName);
    
}


@end
