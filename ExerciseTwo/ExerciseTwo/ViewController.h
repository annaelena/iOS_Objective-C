//
//  ViewController.h
//  ExerciseTwo
//
//  Created by Mariana Anitoiu on 23/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,weak) IBOutlet UITextField *userNumberTextField;

@property(nonatomic,weak) IBOutlet UILabel *userNumberLable;

-(IBAction)userNumberTextFieldDidEndOnExit:(id)sender;
-(IBAction)userNumberTextFieldEditingDidEnd:(id)sender;


@end

