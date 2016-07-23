//
//  TKLabelTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKLabelTutorialView.h"

@implementation TKLabelTutorialView


- (float)measureText
{
    float width = self.bounds.size.width - 20;
    CGSize size = CGSizeMake(width, 10000);
    NSDictionary *attributes = @{NSFontAttributeName: self.theme.font};
    
    CGRect sizeRect = [self.text boundingRectWithSize:size options:0 attributes:attributes context:nil];
    return sizeRect.size.height;
}

@end
