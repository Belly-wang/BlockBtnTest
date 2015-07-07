//
//  ButtonDelegate.h
//  BlockBtnTest
//
//  Created by 王鹏 on 7/2/15.
//  Copyright (c) 2015 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol buttonClickedDelegate <NSObject>

- (void)clickedButtonWithDelegateMethod;

@end
@interface ButtonDelegate : UIButton
@property (nonatomic, weak)id<buttonClickedDelegate> delegate;
@end
