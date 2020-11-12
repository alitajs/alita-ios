//
//  ViewController.m
//  miniapp
//
//  Created by 陈小聪 on 2020/11/5.
//

#import "ViewController.h"
#import <AlitaNativeLib/AlitaNativeLib.h>

@interface ViewController ()

@property (nonatomic, strong) AlitaWebViewController *webViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (!self.webViewController) {
        NSURL *url = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"www/index.html"];
        UINavigationController *nav = [AlitaNative viewControllerWithURL:url userData:@{}];
        self.webViewController = nav.viewControllers.firstObject;
        self.webViewController.hideNavBar = YES;
        nav.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:nav animated:YES completion:nil];
    }
    
}

@end
