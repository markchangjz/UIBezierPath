#import "Draw1ViewController.h"
#import "Draw1View.h"

@interface Draw1ViewController ()

@end

@implementation Draw1ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    Draw1View *drawView = [[Draw1View alloc] init];
    drawView.backgroundColor = [UIColor whiteColor];
    drawView.frame = self.view.frame;
    [self.view addSubview:drawView];
}

@end
