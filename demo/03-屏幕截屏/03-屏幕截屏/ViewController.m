//
//  ViewController.m
//  03-屏幕截屏
//
//  Created by xiaomage on 15/6/19.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+Image.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 生成一张新的图片
    
  UIImage *image =  [UIImage imageWithCaputureView:self.view];
    
    // image转data
    // compressionQuality： 图片质量 1:最高质量
    
     NSData *data = UIImageJPEGRepresentation(image,1);
    
    [data writeToFile:@"/Users/xiaomage/Desktop/view.png" atomically:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
