//
//  ViewController.h
//  ExerciseThree
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,weak) IBOutlet UILabel *numberRandomGenerate;

-(IBAction) buttonYesPressed:(id)sender;
-(IBAction)buttonNoPressed:(id)sender;


@end

