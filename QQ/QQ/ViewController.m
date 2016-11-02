//
//  ViewController.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UISearchBarDelegate >
{
    UIWebView *_webView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISearchBar *search = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 44)];
    search.delegate = self;
    search.backgroundColor = [UIColor redColor];
    [self.view addSubview:search];
    
    [self createWebViewWithURL:@""];
}
#pragma mark UISearchBarDelegate
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self createWebViewWithURL:searchBar.text];
}
- (void)createWebViewWithURL:(NSString *)strURL {
    _webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 64 + 44, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64 - 44)];
    NSString *str = [NSString stringWithFormat:@"http://m.baidu.com/s?word=%@", strURL];
    //转码UTF8
    str = [str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet characterSetWithCharactersInString:str]];
    NSURL *url = [NSURL URLWithString:str];
    NSURLRequest *resquest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:resquest];
    [self.view addSubview:_webView];
    [self.view endEditing:YES];
}
@end
