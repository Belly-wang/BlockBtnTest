//
//  ButtonBlockTest.m
//  BlockBtnTest
//
//  Created by 王鹏 on 7/2/15.
//  Copyright (c) 2015 王鹏. All rights reserved.
//

#import "ButtonBlockTest.h"

@implementation ButtonBlockTest

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)clickAction {
    self.block(self);
}
@end
