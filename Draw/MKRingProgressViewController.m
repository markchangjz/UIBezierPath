#import "MKRingProgressViewController.h"
#import <Draw-Swift.h>

@interface MKRingProgressViewController () {
    MKRingProgressView *ringProgressView;
    UIButton *progress50Button, *progress87Button, *progress168Button;
}

@end

@implementation MKRingProgressViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    ringProgressView = [[MKRingProgressView alloc] initWithFrame:CGRectMake(30.0, 100.0, 200., 200.0)];
    ringProgressView.startColor = [UIColor redColor];
    ringProgressView.endColor = [UIColor magentaColor];
    ringProgressView.ringWidth = 25.0;
    ringProgressView.progress = 0.0;
    [self.view addSubview:ringProgressView];

    progress50Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    progress50Button.frame = CGRectMake(30.0, 350.0, 0.0, 0.0);
    [progress50Button setTitle:@"50%" forState:UIControlStateNormal];
    [progress50Button sizeToFit];
    [progress50Button addTarget:self action:@selector(_clickedProgress50Button:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:progress50Button];

    progress87Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    progress87Button.frame = CGRectMake(30.0, 400.0, 0.0, 0.0);
    [progress87Button setTitle:@"87%" forState:UIControlStateNormal];
    [progress87Button sizeToFit];
    [progress87Button addTarget:self action:@selector(_clickedProgress87Button:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:progress87Button];

    progress168Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    progress168Button.frame = CGRectMake(30.0, 450.0, 0.0, 0.0);
    [progress168Button setTitle:@"168%" forState:UIControlStateNormal];
    [progress168Button sizeToFit];
    [progress168Button addTarget:self action:@selector(_clickedProgress168Button:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:progress168Button];
}

#pragma mark - Private

- (void)_setRingProgress:(CGFloat)progress {
    [CATransaction begin];
    CATransaction.animationDuration = 1.8;
    ringProgressView.progress = progress;
    [CATransaction commit];
}

- (void)_clickedProgress50Button:(UIButton *)sender {
    [self _setRingProgress:0.50];
}

- (void)_clickedProgress87Button:(UIButton *)sender {
    [self _setRingProgress:0.87];
}

- (void)_clickedProgress168Button:(UIButton *)sender {
    [self _setRingProgress:1.68];
}

@end
