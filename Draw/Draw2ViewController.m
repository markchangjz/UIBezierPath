//
//  Draw2ViewController.m
//  Draw
//
//  Created by esunbank on 2017/5/15.
//  Copyright © 2017年 Mark. All rights reserved.
//

// http://stackoverflow.com/questions/7991086/iphone-core-animation-drawing-a-circle

#import "Draw2ViewController.h"

@interface Draw2ViewController ()

@end

@implementation Draw2ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    // Set up the shape of the circle
    int radius = 100;
    CAShapeLayer *circle = [CAShapeLayer layer];
    // Make a circular shape
    circle.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 2.0*radius, 2.0*radius)
                                             cornerRadius:radius].CGPath;
    // Center the shape in self.view
    circle.position = CGPointMake(CGRectGetMidX(self.view.frame)-radius,
                                  CGRectGetMidY(self.view.frame)-radius);

    // Configure the apperence of the circle
    circle.fillColor = [UIColor clearColor].CGColor;
    circle.strokeColor = [UIColor blackColor].CGColor;
    circle.lineWidth = 5;

    // Add to parent layer
    [self.view.layer addSublayer:circle];

    // Configure animation
    CABasicAnimation *drawAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    drawAnimation.duration            = 1.0; // "animate over 10 seconds or so.."
    drawAnimation.repeatCount         = 1.0;  // Animate only once..

    // Animate from no part of the stroke being drawn to the entire stroke being drawn
    drawAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    drawAnimation.toValue   = [NSNumber numberWithFloat:1.0f];

    // Experiment with timing to get the appearence to look the way you want
    drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    // Add the animation to the circle
    [circle addAnimation:drawAnimation forKey:@"drawCircleAnimation"];
}

@end
