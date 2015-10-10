//
//  engneeringViewController.m
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 13/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import "engneeringViewController.h"

@interface engneeringViewController ()

@end

@implementation engneeringViewController
@synthesize mathsTf;
@synthesize physicsTf;
@synthesize chemistryTf;
@synthesize cutoffTv;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Engineering cut-off";
    
    
    mathsTf.delegate = self;
    physicsTf.delegate = self;
    chemistryTf.delegate = self;
    

   
    
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSFontAttributeName:[UIFont fontWithName:@"Avenir" size:21.0],
                                                                    NSForegroundColorAttributeName: [UIColor whiteColor]
                                                                    };
    [mathsTf becomeFirstResponder];


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

- (IBAction)calcBtn:(id)sender {
    [chemistryTf resignFirstResponder];
     [mathsTf resignFirstResponder];
     [physicsTf resignFirstResponder];
    
  
    
   
    int maths = [[self.mathsTf text] intValue];
    int physics = [[self.physicsTf text] intValue];
    int chem = [[self.chemistryTf text] intValue];
    
    //NSLog(@"maths: %i , physics: %i, chem: %i", maths, physics, chem);
    float cutoff = (CGFloat) maths/2 + physics/4 + chem/4;
    NSLog(@"cutoff: %f", cutoff);
    NSString *cutmark = [NSString stringWithFormat:@"%.2f", cutoff];
    self.cutoffTv.text = cutmark;
    }
    


- (IBAction)resetBtn:(id)sender {
    [chemistryTf resignFirstResponder];
    [mathsTf resignFirstResponder];
    [physicsTf resignFirstResponder];

    mathsTf.text = @"";
    physicsTf.text = @"";
    chemistryTf.text = @"";
    cutoffTv.text = @"";
 [mathsTf becomeFirstResponder];
}
-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//{
//    NSString *newString = [mathsTf.text stringByReplacingCharactersInRange:range withString:string];
//    NSString *newString1 = [physicsTf.text stringByReplacingCharactersInRange:range withString:string];
//    NSString *newString2 = [chemistryTf.text stringByReplacingCharactersInRange:range withString:string];
//    
//    return [newString intValue] < 200;
//    return [newString1 intValue] < 200;
//    return [newString2 intValue] < 200;
//}



//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self.view endEditing:YES];
//}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    return [newString intValue] < 201;
}



























@end
