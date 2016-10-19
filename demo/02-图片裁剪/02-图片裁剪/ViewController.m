//
//  ViewController.m
//  02-图片裁剪
//
//  Created by xiaomage on 15/6/19.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Image.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 图片裁剪：把正方形图片重新生产一张圆形的图片
    
    // 图片裁剪
    
    UIImage *image = [UIImage imageWithClipImage:[UIImage imageNamed:@"阿狸头像"] borderWidth:1 borderColor:[UIColor redColor]];
    
    _imageView.image = image;
}


- (void)clipImage
{
    // 0.加载图片
    UIImage *image = [UIImage imageNamed:@"阿狸头像"];
    
    // 1.开启位图上下文，跟图片尺寸一样大
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    
    // 2.设置圆形裁剪区域，正切与图片
    // 2.1创建圆形的路径
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    // 2.2把路径设置为裁剪区域
    [path addClip];
    
    // 3.绘制图片
    [image drawAtPoint:CGPointZero];
    
    // 4.从上下文中获取图片
    UIImage *clipImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 5.关闭上下文
    UIGraphicsEndImageContext();
    
    _imageView.image = clipImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
