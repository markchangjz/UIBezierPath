#import "Draw3ViewController.h"

@interface Draw3ViewController ()

@end

@implementation Draw3ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim.duration = 1.0;
    anim.autoreverses = YES;
    anim.repeatCount = HUGE_VALF;
    anim.toValue = [NSNumber numberWithFloat:0.5];
    [self.view.layer addAnimation:anim forKey:@"aaa"];
}

@end
