//
//  medicalViewController.m
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 13/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import "medicalViewController.h"

@interface medicalViewController ()

@end

@implementation medicalViewController
@synthesize biologyTf;
@synthesize phyTf;
@synthesize chemTf;
@synthesize cutTv;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNeedsStatusBarAppearanceUpdate];
    self.navigationItem.title = @"Medical cut-off";
    
    
    biologyTf.delegate = self;
    phyTf.delegate = self;
    chemTf.delegate = self;

    
    
    
    
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSFontAttributeName:[UIFont fontWithName:@"Avenir" size:21.0],
                                                                    NSForegroundColorAttributeName: [UIColor whiteColor]
                                                                    };
    
    [biologyTf becomeFirstResponder];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)callBtn:(id)sender {
    [biologyTf resignFirstResponder];
    [phyTf resignFirstResponder];
    [chemTf resignFirstResponder];

    int biology = [[self.biologyTf text] intValue];
    int physics = [[self.phyTf text] intValue];
    int chem = [[self.chemTf text] intValue];
    
    //NSLog(@"biology: %i , physics: %i, chem: %i", biology, physics, chem);
    float cutoff = (CGFloat) biology/2 + physics/4 + chem/4;
    NSLog(@"cutoff: %f", cutoff);
    NSString *cutmark = [NSString stringWithFormat:@"%.3f", cutoff];
    self.cutTv.text = cutmark;
}

- (IBAction)restBtn:(id)sender {
    [biologyTf resignFirstResponder];
    [phyTf resignFirstResponder];
    [chemTf resignFirstResponder];
    
    biologyTf.text = @"";
    phyTf.text = @"";
    chemTf.text = @"";
    cutTv.text = @"";
    [biologyTf becomeFirstResponder];
    
}
-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self.view endEditing:YES];
//}




- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    return [newString intValue] < 201;
}


@end
