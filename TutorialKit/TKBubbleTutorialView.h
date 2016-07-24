//
//  TKBubbleTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKLabelTutorialView.h"


typedef enum
{
    kTKBubbleOrientationAbove,
    kTKBubbleOrientationBelow
} TKBubbleOrientation;


@interface TKBubbleTutorialView : TKLabelTutorialView

@property (assign) TKBubbleOrientation orientation;

+ (TKBubbleTutorialView *)bubbleTutorialViewForViewController:(UIViewController *)viewController view:(UIView *)view orientation:(TKBubbleOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key;

@end
