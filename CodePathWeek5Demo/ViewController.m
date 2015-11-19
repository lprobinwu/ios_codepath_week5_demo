//
//  ViewController.m
//  CodePathWeek5Demo
//
//  Created by Robin Wu on 11/18/15.
//  Copyright © 2015 Robin Wu. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.progressView.progress = 0;
    
    [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
}

- (void) onTimer: (NSTimer *) timer {
    self.progressView.progress += 0.01;
    
//    [self.progressView setNeedsDisplay]; // ---> drawRect
    
//    [self.progressView setNeedsLayout];
//    [self.progressView layoutSubviews];
    
    NSLog(@"progress: %f", self.progressView.progress);
    
    if (self.progressView.progress >= 1) {
        [timer invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
