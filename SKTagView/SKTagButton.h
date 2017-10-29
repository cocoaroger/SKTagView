//
// Created by Shaokang Zhao on 15/1/12.
// Copyright (c) 2015 Shaokang Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SKTag;
@interface SKTagButton: UIButton

@property (strong, nonatomic) SKTag *tagObject;
@property (assign, nonatomic) BOOL isSelected; // 是否选中

+ (nonnull instancetype)buttonWithTag: (nonnull SKTag *)tag;

@end
