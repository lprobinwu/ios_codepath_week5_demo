//
//  ProfileHeaderView.m
//  CodePathWeek5Demo
//
//  Created by Robin Wu on 11/18/15.
//  Copyright © 2015 Robin Wu. All rights reserved.
//

#import "ProfileHeaderView.h"

@interface ProfileHeaderView()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ProfileHeaderView

- (id) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setUp];
    }
    return self;
}

- (void) setUp {
    UINib *nib = [UINib  nibWithNibName:@"ProfileHeaderView" bundle:nil];
    [nib instantiateWithOwner:self options:nil];
    
//    self.contentView.frame = self.frame;
    
    self.contentView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    // same as below
//    self.contentView.frame = self.bounds;
    
    // this is same as auto layout with 0 left, 0 right, 0 top and 0 bottom.
//    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self addSubview:self.contentView];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
