//
//  TKBubbleTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKBubbleTutorialView.h"

#import "TKTutorial.h"


@implementation TKBubbleTutorialView

+ (TKTutorialTheme *)defaultTheme
{
    TKTutorialTheme *theme = [[TKTutorialTheme alloc] init];
    
    theme.backgroundColor = [UIColor whiteColor];
    theme.foregroundColor = [UIColor blackColor];
    theme.font = [UIFont systemFontOfSize:12.0];
    theme.margin = 5;
    
    return theme;
}

+ (TKBubbleTutorialView *)bubbleTutorialViewForViewController:(UIViewController *)viewController view:(UIView *)view orientation:(TKBubbleOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r = CGRectMake(theme.margin, 0, viewController.view.bounds.size.width - theme.margin * 2, 15);
    TKBubbleTutorialView *tutorialView = [[TKBubbleTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];
    
    tutorialView.text = text;
    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    [tutorialView setUpTextLabel];
    tutorialView.alpha = 0.0;
    tutorialView.layer.cornerRadius = 5;
    tutorialView.layer.borderColor = [theme.foregroundColor CGColor];
    tutorialView.layer.borderWidth = 0.5;
    
    tutorialView.orientation = orientation;
    if (tutorialView.orientation == kTKBubbleOrientationBelow)
    {
        r = tutorialView.frame;
        r.origin.y = view.frame.origin.y + view.frame.size.height + 5;
        tutorialView.frame = r;
    }
    else
    {
        r = tutorialView.frame;
        r.origin.y = view.frame.origin.y - 5 - tutorialView.bounds.size.height;
        tutorialView.frame = r;
    }
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:tutorialView action:@selector(end)];
    [tutorialView addGestureRecognizer:tapGestureRecognizer];
    [viewController.view addSubview:tutorialView];
    
    [UIView animateWithDuration:0.25 animations:^(void)
     {
         tutorialView.alpha = 1.0;
     }];
    
    return tutorialView;
}

- (void)end
{
    [UIView animateWithDuration:0.25 animations:^(void)
     {
         self.alpha = 0;
     }
     completion:^(BOOL finished)
     {
         [self removeFromSuperview];
     }];
}

@end
