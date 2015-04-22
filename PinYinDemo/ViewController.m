//
//  ViewController.m
//  PinYinDemo
//
//  Created by guohui on 15/4/22.
//  Copyright (c) 2015年 guohui. All rights reserved.
//

#import "ViewController.h"
#import "PinYin4Objc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HanyuPinyinOutputFormat *outputFormat = [[HanyuPinyinOutputFormat alloc]init];
    [outputFormat setToneType:ToneTypeWithoutTone];
    [outputFormat setVCharType:VCharTypeWithV];
    [outputFormat setCaseType:CaseTypeLowercase];

    //转换的内容
    NSString *sendStr = @"我是需要转化的汉字";
    //接收转化成果的结果
    //三个参数的含义，第一个发送需要转化的汉子，第二个转化格式，第三个转换拼音之间用什么隔开，这里不实用间隔，但一般用@" "隔开
    NSString *getStr = [PinyinHelper toHanyuPinyinStringWithNSString:sendStr withHanyuPinyinOutputFormat:outputFormat withNSString:@" "];
    NSLog(@"****%@***",getStr);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
