//
//  ViewController.m
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 12/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ENPopUp.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer1 = self.viewA.layer;
    layer1.shadowOffset = CGSizeMake(1, 1);
    layer1.shadowColor = [[UIColor blackColor] CGColor];
    layer1.shadowRadius = 3.0f;
    layer1.shadowOpacity = 0.90f;
    
    CALayer *layer2 = self.viewB.layer;
    layer2.shadowOffset = CGSizeMake(1, 1);
    layer2.shadowColor = [[UIColor blackColor] CGColor];
    layer2.shadowRadius = 3.0f;
    layer2.shadowOpacity = 0.90f;
    
    layer1.shadowPath = [[UIBezierPath bezierPathWithRect:layer1.bounds] CGPath];

    
    layer2.shadowPath = [[UIBezierPath bezierPathWithRect:layer2.bounds] CGPath];

    
    
    self.navigationItem.title = @"Get your cut-off";
  
    
    
    
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSFontAttributeName:[UIFont fontWithName:@"Avenir" size:21.0],
                                                                    NSForegroundColorAttributeName: [UIColor whiteColor]
                                                                    };
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButtonItem];
    
    
    
 
}
    
    
    


- (IBAction)btnSelectDatePressed:(id)sender
{
    
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PopUp"];
    //vc.view.frame = CGRectMake(0, 0, 309.0f, 531.0f);
    vc.view.frame = CGRectMake(0, 0, 270.0f, 390.0f);
   // vc.view.frame = CGRectMake(0, 0, 270.0f, 380.0f);

    [self presentPopUpViewController:vc];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
