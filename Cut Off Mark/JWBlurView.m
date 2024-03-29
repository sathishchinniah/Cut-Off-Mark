//
//  JWBlurView.m
//  iOS7_blur
//
//  Created by Jake Widmer on 12/14/13.
//  Copyright (c) 2013 Jake Widmer. All rights reserved.
//

#import "JWBlurView.h"
#import <QuartzCore/QuartzCore.h>

@interface JWBlurView ()
@property (nonatomic, strong) UIToolbar * blurBar;
@end

@implementation JWBlurView


#pragma mark - Init functions

// general initializer
- (id)init {
    self = [super init];
    if (self) {
        [self setupView];
    }
    return self;
}

// use with Storyboard
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupView];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}


- (void)setupView {
    [self setClipsToBounds:YES];
    self.backgroundColor = [UIColor clearColor];
    if (![self blurBar]) {  // lazy instantiate
        self.BlurBar = [[UIToolbar alloc] initWithFrame:[self bounds]];
        self.blurBar.barStyle = UIBarStyleBlackOpaque;
        self.blurBar.alpha = .9f;
        [self.layer insertSublayer:[self.blurBar layer] atIndex:0];
        
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.blurBar setFrame:[self bounds]];
}

#pragma mark - Blur view functions

- (void) setBlurColor:(UIColor *)blurColor {
    //[self setBackgroundColor:blurColor];
}

/**
 * Note about setBlurAlpha: You can't change the alpha if the background doesn't have a color set to it
 */
- (void) setBlurAlpha:(CGFloat)alphaValue{
    int numComponents = CGColorGetNumberOfComponents([[self backgroundColor] CGColor]);
    if (numComponents == 4){
        const CGFloat *components = CGColorGetComponents([[self backgroundColor] CGColor]);
        CGFloat red = components[0];
        CGFloat green = components[0];
        CGFloat blue = components[0];
        [self setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:alphaValue]];
    }else{
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:alphaValue]];
    }
}

@end