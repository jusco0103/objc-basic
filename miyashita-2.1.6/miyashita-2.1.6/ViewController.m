//
//  ViewController.m
//  miyashita-2.1.6
//
//  Created by 宮下良介 on 2018/02/27.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //testviewデリゲート
    self.testView.delegate=self;
    
    //表示するURLをurlに格納
    NSURL *url=[NSURL URLWithString:@"http://impre.net/"];
    //HTTPリクエスト先にurlを指定
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    //HTTPリクエストを投げる
    [self.testView loadRequest:request];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
