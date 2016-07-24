//
//  TKGestureTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTutorialView.h"

@interface TKGestureTutorialView : TKTutorialView

@property (strong) UIView *interiorView;
@property (strong) UIGestureRecognizer *gestureRecognizer;

@end
