#import "Mask2ViewController.h"
#import "Mask2View.h"

@interface Mask2ViewController ()

@end

@implementation Mask2ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    Mask2View *maskView = [[Mask2View alloc] initWithFrame:self.view.frame];
    maskView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:maskView];
}

@end
