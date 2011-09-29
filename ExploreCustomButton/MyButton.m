//
//  MyButton.m
//  ExploreCustomButton
//
//  Created by Chris Leicester on 28/09/2011.
//  Copyright (c) 2011 CocoaShed Ltd. All rights reserved.
//
//  This file is distributed under the terms of the MIT License found at
//  the end of this file.
//
//
//  Details:
//
//  We require a non standard layout of the image and title text added to
//  a UIButton. By default the image and title are touching and collectively
//  centred. See Figure 1. Compare with the desired layout shown in figure 2.
//
//  Figure 1                              Figure 2
//
//           1         2         3                 1         2         3
//  1234567890123456789012345678901234    1234567890123456789012345678901234
//
//  +--------------------------------+    +--------------------------------+
//  |                                |    |p                               |
//  |          +---++-----+          |    |p+---+         +-----+          |
//  |          | i ||title|          |    |p| i |         |title|          |
//  |          +---++-----+          |    |p+---+         +-----+          |
//  |                                |    |p                               |
//  +--------------------------------+    +--------------------------------+
//
//  button width = 34                     p (padding)  =  1
//  image width  =  5
//  title width  =  7
//
//  eg. original gap on each side is (34 - 5 - 7) / 2 = 11 
//
//  The image in Figure 2 is left aligned with a padding value and the title
//  is centred within the remaining width.
//
//  UIButton manages it's subviews in an opaque way and any attempts to position
//  your own added custom image or title subviews appear to get overridden.
//  The only mechanism for positioning the standard image and title components
//  is with the setImageEdgeInsets and setTitleEdgeInsets UIButton methods.
//
//  The solution then is to calculate a shift for the image that represents
//  the difference between the horizontal positions of the image
//  in Figures 1 and 2. Similarly, calculate the shift for the title too and
//  apply those with the methods mentioned above.
//
//  Note that with setImageEdgeInsets and setTitleEdgeInsets when we reduce 
//  the left inset, we also increase the right inset by the same amount. This
//  is so that we don't cause the effective content width to increase. If it
//  did increase, the text or image would become centred within the generated
//  slack and our desired position would not be achieved.
//
#import "MyButton.h"
#define kPadding 5.0

@implementation MyButton


- (void)drawRect:(CGRect)rect {
    CGFloat buttonwidth = [self bounds].size.width;
    CGFloat textwidth   = [[[self titleLabel] text] sizeWithFont:[[self titleLabel] font]].width;
    CGFloat imageWidth  = [[self imageView] image].size.width;
    
    int imageShift = (buttonwidth - imageWidth - textwidth)/2 - kPadding; 
    int titleShift = (buttonwidth - imageWidth - textwidth)/2 + imageWidth          // Original default position
    -(buttonwidth - imageWidth - textwidth - kPadding)/2 - imageWidth - kPadding;   // negative of new position
    
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, -imageShift, 0, imageShift)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -titleShift, 0, titleShift)];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
    
    CGColorRef buttonColor = [UIColor colorWithRed:0.0/255.0 green:72.0/255.0 blue:144.0/255.0 alpha:1.0].CGColor;
    //CGColorRef buttonColor = [UIColor orangeColor].CGColor;
    CGContextSetFillColorWithColor(context, buttonColor);
    CGContextSetStrokeColorWithColor(context, buttonColor);
    CGContextStrokeRect(context, [self bounds]);
    CGContextFillRect(context, [self bounds]);
    CGContextRestoreGState(context);
}
@end
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
//  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
//  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
