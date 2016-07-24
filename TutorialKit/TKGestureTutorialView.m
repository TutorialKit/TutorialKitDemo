//
//  TKGestureTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKGestureTutorialView.h"

@implementation TKGestureTutorialView

- (void)drawRect:(CGRect)rect
{
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(c, 4);
    CGContextSetStrokeColorWithColor(c, [self.theme.foregroundColor CGColor]);
    CGContextStrokeEllipseInRect(c, self.bounds);
}

@end
