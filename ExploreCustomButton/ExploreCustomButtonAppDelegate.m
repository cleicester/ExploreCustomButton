//
//  ExploreCustomButtonAppDelegate.m
//  ExploreCustomButton
//
//  Created by Chris Leicester on 27/09/2011.
//  Copyright (c) 2011 CocoaShed Ltd. All rights reserved.
//
//  This file is distributed under the terms of the MIT License found at
//  the end of this file.
//
#import "ExploreCustomButtonAppDelegate.h"

@implementation ExploreCustomButtonAppDelegate

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIImage *image = [UIImage imageNamed:@"blue.png"];
    UIColor *titleColor = [UIColor orangeColor];
    
    MyButton *button1 = [MyButton buttonWithType:UIButtonTypeCustom];
    [button1 setFrame:CGRectMake( 10, 50, 300, 60 )];
    [button1 setTitle: @"One Very Much Bigger Button" forState: UIControlStateNormal];
    [button1 setTitleColor: titleColor forState: UIControlStateNormal];
    [button1 setImage:image forState:UIControlStateNormal];
    [[self window] addSubview: button1];    

    MyButton *button2 = [MyButton buttonWithType:UIButtonTypeCustom];
    [button2 setFrame:CGRectMake( 10, 120, 300, 60 )];
    [button2 setTitle: @"My Very Big Button" forState: UIControlStateNormal];
    [button2 setTitleColor: titleColor forState: UIControlStateNormal];
    [button2 setImage:image forState:UIControlStateNormal];
    [[self window] addSubview: button2];    

    MyButton *button3 = [MyButton buttonWithType:UIButtonTypeCustom];
    [button3 setFrame:CGRectMake( 10, 190, 300, 60 )];
    [button3 setTitle: @"My Big Button" forState: UIControlStateNormal];
    [button3 setTitleColor: titleColor forState: UIControlStateNormal];
    [button3 setImage:image forState:UIControlStateNormal];
    [[self window] addSubview: button3];    

    MyButton *button4 = [MyButton buttonWithType:UIButtonTypeCustom];
    [button4 setFrame:CGRectMake( 10, 260, 300, 60 )];
    [button4 setTitle: @"My Button" forState: UIControlStateNormal];
    [button4 setTitleColor: titleColor forState: UIControlStateNormal];
    [button4 setImage:image forState:UIControlStateNormal];
    [[self window] addSubview: button4];    

    MyButton *button5 = [MyButton buttonWithType:UIButtonTypeCustom];
    [button5 setFrame:CGRectMake( 10, 330, 300, 60 )];
    [button5 setTitle: @"#" forState: UIControlStateNormal];
    [button5 setTitleColor: titleColor forState: UIControlStateNormal];
    [button5 setImage:image forState:UIControlStateNormal];
    [[self window] addSubview: button5];    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
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
