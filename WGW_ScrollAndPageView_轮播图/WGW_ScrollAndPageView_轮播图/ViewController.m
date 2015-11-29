//
//  ViewController.m
//  WGW_ScrollAndPageView_轮播图
//
//  Copyright © 2015年 王国威. All rights reserved.
//

#import "ViewController.h"
#import "WGW_ScrollAndPageView.h"
#define NUM 4


@interface ViewController ()<wgwScrollViewViewDelegate>
{
    WGW_ScrollAndPageView *_wgwView ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建view (view中包含UIScrollView,UIPaageControl,设置frame)
    _wgwView = [[WGW_ScrollAndPageView alloc]initWithFrame:CGRectMake(0, 44, 320, 400)] ;
    //把N张图片放到imageView上
    NSMutableArray *tempAry = [NSMutableArray array] ;
    for (int i =1; i <NUM ; i ++) {
        UIImageView*imgView = [[UIImageView alloc]init] ;
        imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"dog%i.png",i]];
        [tempAry addObject:imgView] ;
    }
    //把imageView数组存到wgwView里面
    [_wgwView setImageViewArray:tempAry] ;
    //把图片展示的View 加到当前页面
    [self.view addSubview:_wgwView] ;
    //开启自动翻页
    [_wgwView shouldAutoShow:YES] ;
    //遵守协议
    _wgwView.delegate = self ;
}

#pragma mark 协议里面的方法 点击某一页
-(void)didClickPage:(WGW_ScrollAndPageView *)view atIndex:(NSInteger)index{
    NSLog(@"点击了第%li页",index) ;
}
#pragma mark 界面消失的时候 , 停止自动滚动
-(void)viewDidAppear:(BOOL)animated{
    [_wgwView shouldAutoShow:NO] ;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
