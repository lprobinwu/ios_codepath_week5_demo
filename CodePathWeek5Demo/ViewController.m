//
//  ViewController.m
//  CodePathWeek5Demo
//
//  Created by Robin Wu on 11/18/15.
//  Copyright © 2015 Robin Wu. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
#import "ProfileHeaderView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@end

@implementation ViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UINib *nib = [UINib nibWithNibName:[[self class]description] bundle:nil];
        [nib instantiateWithOwner:self options:nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // For Demo 1: progress view
//    self.progressView.progress = 0;
//    [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
    
    // one way to build UIView is
//    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
//    blueView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:blueView];
    
    // For Demo 2:
//    UINib *nib = [UINib nibWithNibName:@"MyCustomNib" bundle:nil];
//    NSArray *objects = [nib instantiateWithOwner:self options:nil];
//    
//    UIView *headerView = objects[0];
//    [self.view addSubview:headerView];
//    
//    UIView *greenView = objects[1];
//    CGPoint center = greenView.center;
//    center.y += 200;
//    greenView.center = center;
//    
//    [self.view addSubview:greenView];
    
//    UIView *label = objects[2];
//    [self.view addSubview:label];
    
    // For Demo 3:
    ProfileHeaderView *headerView = [[ProfileHeaderView alloc]initWithFrame:CGRectMake(0, 44, 320, 100)];
    headerView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:headerView];
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
