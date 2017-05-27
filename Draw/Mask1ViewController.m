#import "Mask1ViewController.h"
#import "Draw1View.h"
#import "Mask1View.h"

@interface Mask1ViewController ()

@end

@implementation Mask1ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    Draw1View *drawView = [[Draw1View alloc] init];
    drawView.backgroundColor = [UIColor whiteColor];
    drawView.frame = self.view.frame;
    [self.view addSubview:drawView];

    Mask1View *maskView = [[Mask1View alloc] initWithFrame:self.view.frame];
    maskView.backgroundColor = [UIColor clearColor];
    maskView.alpha = 0.8;
    [self.view addSubview:maskView];
}

@end
