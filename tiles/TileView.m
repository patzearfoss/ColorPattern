//
//  TileView.m
//  tiles
//
//  Created by Patrick Zearfoss on 7/5/11.
//  Copyright 2011 Mindgrub Technologies. All rights reserved.
//

#import "TileView.h"


@implementation TileView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIColor *tileColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"stripes.png"]];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGColorRef tileCGColor = [tileColor CGColor];
    CGColorSpaceRef colorSpace = CGColorGetColorSpace(tileCGColor);
    CGContextSetFillColorSpace(ctx, colorSpace);
    
    if (CGColorSpaceGetModel(colorSpace) == kCGColorSpaceModelPattern)
    {
        CGFloat alpha = 1.0f;
        CGContextSetFillPattern(ctx, CGColorGetPattern(tileCGColor), &alpha);
    }
    else
    {
        CGContextSetFillColor(ctx, CGColorGetComponents(tileCGColor));
    }
    
    CGContextFillRect(ctx, rect);
    
}


- (void)dealloc
{
    [super dealloc];
}

@end
