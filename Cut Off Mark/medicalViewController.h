//
//  medicalViewController.h
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 13/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface medicalViewController : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UITextField *biologyTf;


@property (strong, nonatomic) IBOutlet UITextField *phyTf;


@property (strong, nonatomic) IBOutlet UITextField *chemTf;

@property (strong, nonatomic) IBOutlet UITextView *cutTv;


- (IBAction)callBtn:(id)sender;

- (IBAction)restBtn:(id)sender;



@end
