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
    //    UIViewController *webViewController = [AlitaNative viewControllerWithURL:url];
//        UINavigationController *vc = (UINavigationController *)[AlitaNative viewControllerWithURL:url userData:@{}];
        AlitaWebViewController *webViewController = [[AlitaWebViewController alloc] initWithAppUrl:url userData:@{}];
        self.webViewController = webViewController;
        webViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:webViewController animated:YES completion:nil];
    }
}

@end
