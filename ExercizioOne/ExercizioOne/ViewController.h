//
//  ViewController.h
//  ExercizioOne
//
//  Created by Mariana Anitoiu on 23/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,weak) IBOutlet UITextField *userNameTextField;

@property(nonatomic,weak) IBOutlet UILabel *userNameLable;

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender;

-(IBAction)userNameTextFieldEditingDidEnd:(id)sender;

@end

