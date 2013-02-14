//
//  DoodleView.h
//  CircleTheWagons
//
//  Created by T. Andrew Binkowski on 2/14/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoodleView : UIView
@property (assign) CGPoint firstTouch;
@property (assign) CGPoint lastTouch;
@property (strong, nonatomic) UIBezierPath *path;

- (void) clear;

@end
