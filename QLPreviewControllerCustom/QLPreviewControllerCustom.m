//
//  SXYViewController.m
//  asdasdASdasd
//
//  Created by zhongyang on 16/12/20.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import "QLPreviewControllerCustom.h"
#import "UINavigationItem+Custom.h"

@interface QLPreviewControllerCustom ()

@end

@implementation QLPreviewControllerCustom

- (void)viewDidLoad {
    [super viewDidLoad];
    [UINavigationItem exchangeMethod];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave
                                                                                           target:self
                                                                                           action:@selector(saveAction)];
}


- (void)dealloc {
    [UINavigationItem noExchangeMethod];
}

- (void)saveAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)canShowToolbar {
    return NO;
}

@end
