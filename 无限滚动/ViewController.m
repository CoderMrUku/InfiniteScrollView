//
//  ViewController.m
//  无限滚动
//
//  Created by xmg on 16/2/21.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "ViewController.h"
#import "XMGInfiniteScrollView.h"
#import "MyScrollView.h"

@interface ViewController () <XMGInfiniteScrollViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // scrollView
    XMGInfiniteScrollView *scrollView = [[XMGInfiniteScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 200)];
    scrollView.images = @[
                          [UIImage imageNamed:@"image6"],
                          [UIImage imageNamed:@"image7"],
                          [UIImage imageNamed:@"image8"],
                          [UIImage imageNamed:@"image9"],
                          [UIImage imageNamed:@"image10"],
                          [UIImage imageNamed:@"image11"],
                          [UIImage imageNamed:@"image12"],
                          [UIImage imageNamed:@"image1"]
                          ];
    scrollView.delegate = self;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor redColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor yellowColor];
//    scrollView.direction = XMGInfiniteScrollViewDirectionVertical;
    [self.view addSubview:scrollView];
}

#pragma mark - <XMGInfiniteScrollViewDelegate>
- (void)infiniteScrollView:(XMGInfiniteScrollView *)scrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"点击了第%zd个图片", index);
}
@end
