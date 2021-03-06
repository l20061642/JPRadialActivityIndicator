//
//	ActivityIndicator.m
//	New Image
//
//	Created by Joe on 5/25/11
//	This code was generated by Opacity. You may use or modify it in any way.
//

#import "ActivityIndicator.h"

const CGFloat kActivityIndicatorWidth = 44.0f;
const CGFloat kActivityIndicatorHeight = 44.0f;

@implementation ActivityIndicator


- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setOpaque:NO];
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setOpaque:NO];
	}
	return self;
}

- (CGSize)sizeThatFits:(CGSize)size
{
	return CGSizeMake(kActivityIndicatorWidth, kActivityIndicatorHeight);
}

- (void)drawRect:(CGRect)dirtyRect
{
	CGRect imageBounds = CGRectMake(0.0f, 0.0f, kActivityIndicatorWidth, kActivityIndicatorHeight);
	CGRect bounds = [self bounds];
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat alignStroke;
	CGFloat resolution;
	CGMutablePathRef path;
	CGRect drawRect;
	UIColor *color;
	CGFloat stroke;
	CGGradientRef gradient;
	NSMutableArray *colors;
	CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
	CGPoint point;
	CGPoint point2;
	CGFloat locations[3];
	resolution = 0.5f * (bounds.size.width / imageBounds.size.width + bounds.size.height / imageBounds.size.height);
	CGContextBeginTransparencyLayer(context, NULL);
	
	CGContextSaveGState(context);
	CGContextTranslateCTM(context, bounds.origin.x, bounds.origin.y);
	CGContextScaleCTM(context, (bounds.size.width / imageBounds.size.width), (bounds.size.height / imageBounds.size.height));
	
	// Layer 1
	
	alignStroke = 0.0f;
	path = CGPathCreateMutable();
	drawRect = CGRectMake(0.0f, 0.0f, 44.0f, 44.0f);
	drawRect.origin.x = (roundf(resolution * drawRect.origin.x + alignStroke) - alignStroke) / resolution;
	drawRect.origin.y = (roundf(resolution * drawRect.origin.y + alignStroke) - alignStroke) / resolution;
	drawRect.size.width = roundf(resolution * drawRect.size.width) / resolution;
	drawRect.size.height = roundf(resolution * drawRect.size.height) / resolution;
	CGPathAddEllipseInRect(path, NULL, drawRect);
	color = [UIColor colorWithRed:0.0f green:0.502f blue:1.0f alpha:1.0f];
	[color setStroke];
	stroke = 4.75f;
	stroke *= resolution;
	if (stroke < 1.0f) {
		stroke = ceilf(stroke);
	} else {
		stroke = roundf(stroke);
	}
	stroke /= resolution;
	stroke *= 2.0f;
	CGContextSetLineWidth(context, stroke);
	CGContextSetLineCap(context, kCGLineCapSquare);
	CGContextSaveGState(context);
	CGContextAddPath(context, path);
	CGContextEOClip(context);
	CGContextAddPath(context, path);
	CGContextStrokePath(context);
	CGContextRestoreGState(context);
	CGPathRelease(path);
	
	// Layer 2
	CGContextSetBlendMode(context, kCGBlendModeSourceIn);
	CGContextBeginTransparencyLayer(context, NULL);
	
	alignStroke = 0.0f;
	path = CGPathCreateMutable();
	drawRect = CGRectMake(0.0f, 0.0f, 44.0f, 44.0f);
	drawRect.origin.x = (roundf(resolution * drawRect.origin.x + alignStroke) - alignStroke) / resolution;
	drawRect.origin.y = (roundf(resolution * drawRect.origin.y + alignStroke) - alignStroke) / resolution;
	drawRect.size.width = roundf(resolution * drawRect.size.width) / resolution;
	drawRect.size.height = roundf(resolution * drawRect.size.height) / resolution;
	CGPathAddRect(path, NULL, drawRect);
	colors = [NSMutableArray arrayWithCapacity:3];
	color = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
	[colors addObject:(id)[color CGColor]];
	locations[0] = 1.0f;
	color = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
	[colors addObject:(id)[color CGColor]];
	locations[1] = 0.249f;
	color = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
	[colors addObject:(id)[color CGColor]];
	locations[2] = 0.095f;
	gradient = CGGradientCreateWithColors(space, (CFArrayRef)colors, locations);
	CGContextAddPath(context, path);
	CGContextSaveGState(context);
	CGContextEOClip(context);
	point = CGPointMake(22.0f, 44.0f);
	point2 = CGPointMake(22.0f, 0.0f);
	CGContextDrawLinearGradient(context, gradient, point, point2, (kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation));
	CGContextRestoreGState(context);
	CGGradientRelease(gradient);
	CGPathRelease(path);
	
	CGContextEndTransparencyLayer(context);
	
	CGContextRestoreGState(context);
	CGContextEndTransparencyLayer(context);
	CGColorSpaceRelease(space);
}

@end
