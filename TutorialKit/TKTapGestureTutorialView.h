//
//  TKTapGestureTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKGestureTutorialView.h"


@interface TKTapGestureTutorialView : TKGestureTutorialView

+ (TKTapGestureTutorialView *)tapTutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key;

@end
