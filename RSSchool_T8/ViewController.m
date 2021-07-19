//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Rust Enikeev on 7/17/21.
//

#import "ViewController.h"
#import "RSView.h"
#import "SVGBezierPath.h"
#import "CanvasView.h"


@interface ViewController ()

@property (nonatomic, strong) RSView *blueView;
@property (atomic) float len;
@property (weak, nonatomic) IBOutlet CanvasView *canvasView;

@end

@implementation ViewController



- (IBAction)butTapped:(id)sender {
    self.len = self.len + 0.1;
    if (self.len > 1) {
        self.len = 1;
    }
    [self drawFace];
    NSLog(@"Tapped");
}


- (void) drawFace {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"landscape" withExtension:@"svg"];
    NSArray *paths = [SVGBezierPath pathsFromSVGAtURL:url];

    CALayer *faceLayer = [[CALayer alloc] init];
   
//    [faceLayer setBackgroundColor:[UIColor whiteColor].CGColor];
    
     for (int i = 0; i < [paths count]; i++) {
         CAShapeLayer *csh = [[CAShapeLayer alloc] init];
         [csh setBackgroundColor:[UIColor whiteColor].CGColor];
         
         [csh setPath:[paths[i] CGPath]];
//         [csh setStrokeEnd:self.len];
         [csh setFillColor:[UIColor whiteColor].CGColor];

         if (i == 0) {
           [csh setStrokeColor:[UIColor grayColor].CGColor];
//           [csh setFillColor:[UIColor grayColor].CGColor];
         }
         else if (i == 1) {
             [csh setStrokeColor:[UIColor redColor].CGColor];
//             [csh setFillColor:[UIColor redColor].CGColor];
         }
         else if (i == 2) {
             [csh setStrokeColor:[UIColor blueColor].CGColor];
         }
         else {
             [csh setStrokeColor:[UIColor greenColor].CGColor];

         }
         
         
         [faceLayer addSublayer:csh];
     }
     
//     self.blueView = [[RSView alloc] initWithFrame:CGRectMake(10.0, 50.0, 300, 300) andColor:UIColor.whiteColor];
    //     [self.view addSubview:self.blueView];

    

    
    
     [self.canvasView.layer addSublayer:faceLayer];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Artist";
    
//    [self.canvasView.layer setBorderColor:[UIColor grayColor].CGColor];
//    [self.canvasView.layer setBorderWidth:2.0];
    [self.canvasView.layer setCornerRadius:8.0];
    
    [self.canvasView.layer setShadowOffset:CGSizeMake(.0f, 2.5f)];
    [self.canvasView.layer setShadowRadius:8.0];
    [self.canvasView.layer setShadowOpacity:.9f];
    [self.canvasView.layer setShadowColor:[UIColor colorWithRed:0.f/255.f green:178.f/255.f blue:255.f/255.f alpha:.25f].CGColor];
    [self.canvasView.layer setShadowPath:[UIBezierPath bezierPathWithRect:self.canvasView.bounds].CGPath];

    
    self.len = 0;
//    [self drawFace];
    //    self.blueView = [[RSView alloc] initWithFrame:CGRectMake(10.0, 50.0, 350, 350) andColor:UIColor.grayColor];
//
//    [self.view addSubview:self.blueView];
    
//    CAShapeLayer *layer = [[CAShapeLayer alloc] init];

    
}


@end
