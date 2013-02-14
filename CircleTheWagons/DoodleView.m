//
//  DoodleView.m
//  CircleTheWagons
//
//  Created by T. Andrew Binkowski on 2/14/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "DoodleView.h"


@implementation DoodleView

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.multipleTouchEnabled = NO;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) touchesBegan:(NSSet *) touches withEvent:(UIEvent *) event
{
	self.path = [UIBezierPath bezierPath];
	self.path.lineWidth = 15.0f;
    self.path.lineCapStyle = kCGLineCapRound;
    self.path.lineJoinStyle = kCGLineJoinRound;
	
	UITouch *touch = [touches anyObject];
	[self.path moveToPoint:[touch locationInView:self]];
}

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) touchesMoved:(NSSet *) touches withEvent:(UIEvent *) event
{
	UITouch *touch = [touches anyObject];
	[self.path addLineToPoint:[touch locationInView:self]];
	[self setNeedsDisplay];
}

/*******************************************************************************
 * @method       method
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	[self.path addLineToPoint:[touch locationInView:self]];
	[self setNeedsDisplay];
}

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self touchesEnded:touches withEvent:event];
}

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) clear
{
    NSLog(@"Clear");
    [self.path removeAllPoints];
    [self setNeedsDisplay];
}

/*******************************************************************************
 * @method      <# method #>
 * @abstract    <# abstract #>
 * @description <# description #>
 *******************************************************************************/
- (void) drawRect:(CGRect)rect
{
	[[UIColor blueColor] set];
	[self.path stroke];
}

@end
