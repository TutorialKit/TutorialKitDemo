//
//  TKGestureTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKGestureTutorialView.h"

@implementation TKGestureTutorialView

+ (TKTutorialTheme *)defaultTheme
{
    TKTutorialTheme *theme = [[TKTutorialTheme alloc] init];
    
    theme.foregroundColor = [UIColor whiteColor];
    theme.backgroundColor = [UIColor blueColor];
    
    return theme;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGRect r = CGRectInset(self.bounds, 2, 2);
    CGContextSetLineWidth(c, 4);
    CGContextSetFillColorWithColor(c, [self.theme.backgroundColor CGColor]);
    CGContextFillEllipseInRect(c, r);
    CGContextSetStrokeColorWithColor(c, [self.theme.foregroundColor CGColor]);
    CGContextStrokeEllipseInRect(c, r);
}

@end
