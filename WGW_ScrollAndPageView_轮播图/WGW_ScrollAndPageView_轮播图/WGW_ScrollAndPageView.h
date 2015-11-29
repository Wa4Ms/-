//
//  WGW_ScrollAndPageView.h
//  WGW_ScrollAndPageView_轮播图
//
//  Copyright © 2015年 王国威. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol wgwScrollViewViewDelegate ;

@interface WGW_ScrollAndPageView : UIView<UIScrollViewDelegate>
{
    __unsafe_unretained id <wgwScrollViewViewDelegate>_delegate ;
}
@property(nonatomic,assign) id<wgwScrollViewViewDelegate>delegate ;
@property(nonatomic,assign) NSInteger currentPage ;
@property(nonatomic,strong) NSMutableArray * imageViewArray ;
@property(nonatomic,readonly)UIScrollView *scrollView ;
@property(nonatomic,readonly)UIPageControl * pageControl ;

-(void) shouldAutoShow : (BOOL) shouldStart ;

@end

@protocol wgwScrollViewViewDelegate <NSObject>

-(void) didClickPage : (WGW_ScrollAndPageView*)view atIndex:(NSInteger)index ;

@end
