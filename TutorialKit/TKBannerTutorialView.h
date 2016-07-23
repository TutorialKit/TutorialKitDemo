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
    kTKBannerOrientationTop,
    kTKBannerOrientationBottom
} TKBannerOrientation;


@interface TKBannerTutorialView : TKLabelTutorialView

@property (weak) UIViewController *viewController;
@property (assign) TKBannerOrientation orientation;

+ (TKBannerTutorialView *)bannerTutorialViewForViewController:(UIViewController *)viewController orientation:(TKBannerOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key;

@end
