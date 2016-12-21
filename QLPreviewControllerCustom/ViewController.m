//
//  ViewController.m
//  asdasdASdasd
//
//  Created by zhongyang on 16/12/20.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import "ViewController.h"
#import <QuickLook/QuickLook.h>
#import "UINavigationItem+Custom.h"
#import "QLPreviewControllerCustom.h"

@interface ViewController () <QLPreviewControllerDataSource, QLPreviewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testAction:(id)sender {
    QLPreviewControllerCustom *previewController =  [[QLPreviewControllerCustom alloc] init];
    previewController.dataSource = self;
    previewController.delegate = self;
    [self presentViewController:previewController animated:YES completion:nil];
}

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller {
    return 1;
}

/*!
 * @abstract Returns the item that the preview controller should preview.
 * @param panel The Preview Controller.
 * @param index The index of the item to preview.
 * @result An item conforming to the QLPreviewItem protocol.
 */
- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"image1" ofType:@"jpg"];
    NSURL *url = [NSURL fileURLWithPath:filePath];

    return url;
}

- (void)previewControllerWillDismiss:(QLPreviewController *)controller {

}

/*!
 * @abstract Invoked after the preview controller is closed.
 */
- (void)previewControllerDidDismiss:(QLPreviewController *)controller {
    controller.delegate = nil;
    controller.dataSource = nil;
}


@end
