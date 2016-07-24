//
//  TKLabelTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKLabelTutorialView.h"

@implementation TKLabelTutorialView

- (void)setUpTextLabel
{
    float margin = self.theme.margin;
    CGRect r = self.bounds;
    CGRect labelRect = CGRectInset(r, margin, margin);
    labelRect.size.height = [self measureTextForWidth:labelRect.size.width];
    
    self.textLabel = [[UILabel alloc] initWithFrame:labelRect];
    self.textLabel.numberOfLines = 0;
    self.textLabel.font = self.theme.font;
    self.textLabel.textColor = self.theme.foregroundColor;
    self.textLabel.text = self.text;
    
    r.size.height += labelRect.size.height;
    self.bounds = r;
    [self addSubview:self.textLabel];
}

- (float)measureTextForWidth:(float)width
{
    CGSize size = CGSizeMake(width, 10000);
    NSDictionary *attributes = @{NSFontAttributeName: self.theme.font};
    
    CGRect sizeRect = [self.text boundingRectWithSize:size options:0 attributes:attributes context:nil];
    return sizeRect.size.height;
}

@end
