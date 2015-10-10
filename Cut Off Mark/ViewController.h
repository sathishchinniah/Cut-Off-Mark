//
//  ViewController.h
//  Cut Off Mark
//
//  Created by Sathish Chinniah on 12/09/15.
//  Copyright (c) 2015 Sathish Chinniah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface ViewController : UIViewController {
    UIButton *closeBtn;
}


@property (weak, nonatomic) IBOutlet UIView *viewA;
@property (weak, nonatomic) IBOutlet UIView *viewB;
@property(nonatomic,retain)UIPopoverPresentationController *dateTimePopover8;




@end

