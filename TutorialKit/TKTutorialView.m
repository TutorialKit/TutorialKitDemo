//
//  TKTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTutorialView.h"

#import "TKTutorialTheme.h"


static NSMutableDictionary *viewLookup;


@implementation TKTutorialView

+ (void)initialize
{
    viewLookup = [[NSMutableDictionary alloc] init];
}

+ (TKTutorialView *)tutorialView
{
    return nil;
}

+ (void)addTutorialView:(TKTutorialView *)tutorialView forKey:(NSString *)key
{
    [viewLookup setObject:tutorialView forKey:key];
}

+ (void)setKey:(NSString *)key
{
    if (key == nil)
        return;
    
    TKTutorialView *tutorialView = [viewLookup objectForKey:key];
    if (tutorialView == nil)
        return;
    [tutorialView end];
    
    [viewLookup removeObjectForKey:key];
}

+ (TKTutorialTheme *)defaultTheme
{
    return [[TKTutorialTheme alloc] init];
}


- (void)end
{
    
}

@end
