//
//  progressView.m
//  圆形进度器Demo
//
//  Created by locojoy on 16/2/3.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import "progressView.h"

@implementation progressView


-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    
    //重新绘制圆弧
//    [self drawRect:self.bounds];
    
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //创建贝塞尔路径
    CGFloat radius = rect.size.width * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    
      NSLog(@"value is %f",_progress);
    
    CGFloat endAngle = - M_PI_2 + _progress * M_PI * 2;
    UIBezierPath *path =  [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:- M_PI_2  endAngle:endAngle clockwise:YES];
    
    [path stroke];
}


@end
