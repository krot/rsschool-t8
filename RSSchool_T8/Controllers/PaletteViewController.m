//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Rust Enikeev on 7/19/21.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setPreferredContentSize:CGSizeMake(300, 333)];
    
//    [[self view] setBackgroundColor:[UIColor redColor]];
    


    // Do any additional setup after loading the view.
}

- (void)updateViewConstraints {
    [[[self view] superview] setFrame:CGRectMake(0, 0, 375, 333)];
    
//    [[[self view] superview] constraints]
    
    [super updateViewConstraints];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
