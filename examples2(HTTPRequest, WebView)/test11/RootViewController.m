//
//  RootViewController.m
//  test11
//
//  Created by apple on 2019/04/06.
//  Copyright © 2019年 apple. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*---- HTTPRequest 送受信する ----*/
    NSString* address = @"http://www.apple.com/";
    NSURL* url = [NSURL URLWithString:address];
    NSURLRequest* request = [NSURLRequest
                             requestWithURL:url];
    NSURLResponse* response = nil;
    NSError* error = nil;
    NSData* data = [NSURLConnection
                    sendSynchronousRequest:request
                    returningResponse:&response
                    error:&error];
    NSString* result = [[NSString alloc]
                        initWithData:data
                        encoding:NSASCIIStringEncoding];
    NSLog(@"%@",result);
    
    
    /*---- webview 表示する ----*/
    // UIWebView例文
    UIWebView *wv = [[UIWebView alloc] init];
    wv.delegate = self;
    // スクリーンサイズを取得
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    wv.frame = CGRectMake(0, 0, screenWidth, screenHeight);

    wv.scalesPageToFit = YES;
    [self.view addSubview:wv];

    NSURL *url0001 = [NSURL URLWithString:@"https://www.yahoo.co.jp/"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url0001];
    [wv loadRequest:req];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
