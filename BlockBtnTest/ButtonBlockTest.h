//
//  ButtonBlockTest.h
//  BlockBtnTest
//
//  Created by 王鹏 on 7/2/15.
//  Copyright (c) 2015 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ButtonBlockTest;
typedef void(^ButtonTestBlock)(ButtonBlockTest *);
@interface ButtonBlockTest : UIButton

@property (nonatomic, strong) ButtonTestBlock block;
@end
