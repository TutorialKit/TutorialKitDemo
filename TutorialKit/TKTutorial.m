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

+ (void)resetTutorials
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:nil forKey:TUTORIALKITKEY];
}

+ (BOOL)keyUsed:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSMutableDictionary *keyList = [defaults objectForKey:TUTORIALKITKEY];

    if (keyList == nil)
    {
        keyList = [[NSMutableDictionary alloc] init];
        [defaults setObject:keyList forKey:TUTORIALKITKEY];
    }
    
    return ([keyList objectForKey:key] != nil);
}

+ (void)setKey:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSMutableDictionary *keyList = [defaults objectForKey:TUTORIALKITKEY];
    [keyList setObject:@YES forKey:key];
    [defaults setObject:keyList forKey:TUTORIALKITKEY];
    [defaults synchronize];
}

@end
