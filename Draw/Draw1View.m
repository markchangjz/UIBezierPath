#import "Draw1View.h"

@implementation Draw1View

- (void)drawTriangle {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(110.0, 100.0)];
    [path addLineToPoint:CGPointMake(10.0, 200.0)];
    [path addLineToPoint:CGPointMake(110.0, 200.0)];
    [path closePath];
    [path stroke]; // 描邊

    [self setNeedsLayout];
}

- (void)drawCircle {
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    [path addArcWithCenter:CGPointMake(200.0, 150.0) radius:50.0 startAngle:0.0 endAngle:M_PI*2 clockwise:NO];
    [[UIColor lightGrayColor] setFill]; // 填滿顏色
    [[UIColor blueColor] setStroke]; // 描邊顏色
    [path fill]; // 填滿
    [path stroke]; // 描邊

    [self setNeedsLayout];
}

- (void)drawDashLine {
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 6.0;
    CGFloat pattern1[4] = {10.0, 20.0, 20.0, 10.0};
    [path setLineDash:pattern1 count:4 phase:0];
    [path moveToPoint:CGPointMake(20.0, 250.0)];
    [path addLineToPoint:CGPointMake(300.0, 250.0)];
    [[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0] setStroke]; // 描邊顏色
    [path stroke]; // 描邊

    [self setNeedsLayout];
}

- (void)drawSymbol {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(50.0, 50.0) radius:50.0 startAngle:0.0 endAngle:3*M_PI/2 clockwise:NO];
    [path addArcWithCenter:CGPointMake(50.0, 50.0) radius:50.0 startAngle:M_PI/2 endAngle:M_PI clockwise:YES];
    path.lineWidth = 6.0;
    [[UIColor lightGrayColor] setFill]; // 填滿顏色
    [[UIColor brownColor] setStroke]; // 描邊顏色

    void (^drawBlock)(int x, int y) = ^(int x, int y) {
        CGAffineTransform trans = CGAffineTransformMakeTranslation(x, y);
        trans = CGAffineTransformScale(trans, 0.8, 0.8);
        CGAffineTransform revert = CGAffineTransformInvert(trans);
        [path applyTransform:trans];
        [path closePath];
        [path stroke];
        [path fill];
        [path applyTransform:revert];
    };

    drawBlock(10, 300);
    drawBlock(110, 300);
    drawBlock(210, 300);

    [self setNeedsLayout];
}

- (void)drawRect:(CGRect)rect {
    [self drawTriangle];
    [self drawCircle];
    [self drawDashLine];
    [self drawSymbol];
}

@end
