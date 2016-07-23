//
//  TKTapGestureTutorialView
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTapGestureTutorialView.h"

#import "TKTutorial.h"


@implementation TKTapGestureTutorialView

+ (TKTapGestureTutorialView *)tutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r;
    TKTapGestureTutorialView *tutorialView = [[TKTapGestureTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];

    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    
    [view addSubview:tutorialView];
    
//    CGRect newFrame = tutorialView.frame;
    
    
    return tutorialView;
}

- (void)end
{
    
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(c, 4);
    CGContextSetStrokeColorWithColor(c, [self.theme.foregroundColor CGColor]);
    CGContextStrokeEllipseInRect(c, self.bounds);
}

@end
