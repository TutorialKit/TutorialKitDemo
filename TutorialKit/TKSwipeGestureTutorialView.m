//
//  TKSwipeGestureTutorialView
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKSwipeGestureTutorialView.h"

#import "TKTutorial.h"


@implementation TKSwipeGestureTutorialView

+ (TKSwipeGestureTutorialView *)tutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r;
    TKSwipeGestureTutorialView *tutorialView = [[TKSwipeGestureTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];

    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    
    [view addSubview:tutorialView];
    
//    CGRect newFrame = tutorialView.frame;
    
    [tutorialView.gestureRecognizer addTarget:self action:@selector(end)];
    
    
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
