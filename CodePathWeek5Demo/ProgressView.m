//
//  ProgressView.m
//  CodePathWeek5Demo
//
//  Created by Robin Wu on 11/18/15.
//  Copyright © 2015 Robin Wu. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void) setProgress:(CGFloat)progress {
    _progress = progress;
    
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat red[4] = {1.0f, 0.0f, 0.0f, 1.0f};
    CGContextSetStrokeColor(context, red);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 0.0f, 0.0f);
    
    CGContextAddLineToPoint(context, self.progress * rect.size.width, 0.0f);
    CGContextStrokePath(context);
}

@end
