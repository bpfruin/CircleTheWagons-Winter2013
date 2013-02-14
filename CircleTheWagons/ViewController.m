//
//  ViewController.m
//  CircleTheWagons
//
//  Created by T. Andrew Binkowski on 2/14/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "ViewController.h"
#import "DoodleView.h"
#import "CircleGestureRecognizer.h"

@interface ViewController ()
@property (strong, nonatomic) DoodleView* doodleView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // Load the doodle view
    CGRect window = [[UIScreen mainScreen] bounds];
    self.doodleView = [[DoodleView alloc] initWithFrame:window];
    
    CircleGestureRecognizer *recognizer = [[CircleGestureRecognizer alloc] initWithTarget:self action:@selector(handleCircleRecognizer:)];
	[self.doodleView addGestureRecognizer:recognizer];
    [self.view addSubview:self.doodleView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
