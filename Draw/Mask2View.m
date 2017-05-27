// https://stackoverflow.com/questions/30938134/clip-masking-uiview-with-cashapelayer-and-uibezierpath

#import "Mask2View.h"

@implementation Mask2View

- (void)drawRect:(CGRect)rect {
    UIBezierPath *circlePath = [UIBezierPath bezierPath];
    [circlePath addArcWithCenter:CGPointMake(200.0, 150.0) radius:50.0 startAngle:0.0 endAngle:M_PI*2 clockwise:NO];
    UIBezierPath *circlePath2 = [UIBezierPath bezierPath];
    [circlePath2 addArcWithCenter:CGPointMake(200.0, 350.0) radius:50.0 startAngle:0.0 endAngle:M_PI*2 clockwise:NO];
    [circlePath appendPath:circlePath2];
    
    UIBezierPath *myClippingPath = circlePath;
    CAShapeLayer *mask = [CAShapeLayer layer];
    mask.path = myClippingPath.CGPath;
    self.layer.mask = mask;
}

@end
