//
//  ViewController.h
//  ExerciseSix
//
//  Created by Mariana Anitoiu on 24/01/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *userName;
@property (nonatomic,weak) IBOutlet UITextField *userSurname;
@property (nonatomic,weak) IBOutlet UITextField *userAge;

-(IBAction)buttonSave:(id)sender;


@end

