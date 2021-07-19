//
//  RSView.m
//  RSSchool_T8
//
//  Created by Rust Enikeev on 7/17/21.
//

#import "RSView.h"

@implementation RSView

- (instancetype)initWithFrame:(CGRect)frame andColor:(nonnull UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = color;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
