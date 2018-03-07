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

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    if(error.code==-1009){
        UIAlertController *offlineac=[UIAlertController alertControllerWithTitle:@"Error" message:@"エラーコード：1099\nインターネットに接続されていません。\n正しくインターネットに\n接続されているか、確認してください。" preferredStyle:UIAlertControllerStyleActionSheet];
        
        [offlineac addAction:[UIAlertAction actionWithTitle:@"OK"
                                                      style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * action){
                                                        NSLog(@"-1099");
                                                    }]];
        [self presentViewController:offlineac animated:YES completion:nil];
        
        }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
