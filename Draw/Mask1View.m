// https://stackoverflow.com/questions/16512761/calayer-with-transparent-hole-in-it

// https://stackoverflow.com/questions/14411765/ios-invert-mask-in-drawrect

#import "Mask1View.h"

@implementation Mask1View

- (void)drawRect:(CGRect)rect {
    CGFloat radius = 50.0;
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) cornerRadius:0];
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 100, 2.0 * radius, 2.0 * radius) cornerRadius:radius];
    UIBezierPath *circlePath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(200, 150, 2.0 * radius, 2.0 * radius) cornerRadius:radius];
    [path appendPath:circlePath];
    [path appendPath:circlePath2];
    path.usesEvenOddFillRule = YES;

    CAShapeLayer *fillLayer = [CAShapeLayer layer];
    fillLayer.path = path.CGPath;
    fillLayer.fillRule = kCAFillRuleEvenOdd;
    fillLayer.fillColor = [UIColor blackColor].CGColor;
    [self.layer addSublayer:fillLayer];
}

@end
