//
//  ViewController.m
//  ExerciseSeven
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int _timeSecondsCount;
    int _timeMinutesCount;
    int _timeHoursCount;
    
    NSTimer *timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self startTimer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)startTimer{
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countSeconds) userInfo:nil repeats:true];
}

-(void)countSeconds{
    if(_timeSecondsCount < 60){
    _timeSecondsCount++;
    }else{
        _timeSecondsCount=0;
        _timeMinutesCount ++;
    }if(_timeMinutesCount > 60){
        _timeMinutesCount=0;
        _timeHoursCount++;
    }
    
    [self.showTimer setText:[NSString stringWithFormat:@"%i:%i:%i",_timeHoursCount,_timeMinutesCount,_timeSecondsCount]];
}

@end
