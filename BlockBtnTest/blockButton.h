//
//  blockButton.h
//  BlockBtnTest
//
//  Created by 王鹏 on 7/2/15.
//  Copyright (c) 2015 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@class blockButton;
typedef void(^TouchBlock)(blockButton *);
@interface blockButton : UIButton

@property(nonatomic, copy) TouchBlock block;

@end
