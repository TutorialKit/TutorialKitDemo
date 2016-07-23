//
//  TKLabelTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTutorialView.h"

@interface TKLabelTutorialView : TKTutorialView

@property (strong) UILabel *textLabel;
@property (strong) NSString *text;

- (float)measureText;

@end
