//
//  TKBannerTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TKLabelTutorialView.h"


typedef enum
{
    kBannerOrientationTop,
    kBannerOrientationBottom
} TKBannerOrientation;


@interface TKBannerTutorialView : TKLabelTutorialView

@property (weak) UIViewController *viewController;
@property (assign) TKBannerOrientation orientation;

@end
