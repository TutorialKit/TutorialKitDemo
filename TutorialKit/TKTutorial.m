//
//  TKTutorial.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTutorial.h"


#define TUTORIALKITKEY (@"TutorialKitKey")


@implementation TKTutorial

- (void)resetTutorials
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:nil forKey:TUTORIALKITKEY];
}





@end
