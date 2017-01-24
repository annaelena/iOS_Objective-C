//
//  ViewController.m
//  ExerciseFour
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *arrayRandom;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //inizializzo l'array:
    arrayRandom = [[NSMutableArray alloc]init];
    
    [self generateArray];
    [self.showResult setText:[NSString stringWithFormat:@"%i",[self calcolaSomma]]];
    [self sortArrayAscdeding];
    [self sortArrayDescending];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}


-(void) generateArray{
    for(int i = 0; i <100; i++){
        [arrayRandom addObject:[NSNumber numberWithInt:[self getRandomNumberBetween:1 to:1000]]];
        
    }
    NSLog(@"%@",arrayRandom);
}

-(int)calcolaSomma{
    int somma = 0;
    for ( id j in arrayRandom) {
        somma +=(int)j;
        
 
    }
    NSLog(@"%i",somma);
    return somma;
}

-(void)sortArrayAscdeding{
    NSArray *arraySortAscending = [arrayRandom sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        
        
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        if(value1 == value2){
            return NSOrderedSame;
        }
        if(value1 < value2){
            return NSOrderedAscending;
        }
        
        return NSOrderedDescending;
        
    }];
    NSLog(@"%@",arraySortAscending);
    
    
}

-(void)sortArrayDescending{
    NSArray *arraySortDescending = [arrayRandom sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        
        
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        if(value1 == value2){
            return NSOrderedSame;
        }
        if(value1 < value2){
            return NSOrderedDescending;
        }
        
        return NSOrderedAscending;
        
    }];
    NSLog(@"%@",arraySortDescending);
}

@end
