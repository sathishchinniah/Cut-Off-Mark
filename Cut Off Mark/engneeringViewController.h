//
//  engneeringViewController.h
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 13/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface engneeringViewController : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UITextField *mathsTf;


@property (strong, nonatomic) IBOutlet UITextField *physicsTf;


@property (strong, nonatomic) IBOutlet UITextField *chemistryTf;



@property (strong, nonatomic) IBOutlet UITextView *cutoffTv;


- (IBAction)calcBtn:(id)sender;

- (IBAction)resetBtn:(id)sender;
@property (nonatomic) CGFloat offsetPoint;



@end
