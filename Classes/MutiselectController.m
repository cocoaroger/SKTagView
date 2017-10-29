//
//  MutiselectController.m
//  SKTagView
//
//  Created by roger wu on 29/10/2017.
//  Copyright © 2017 shiweifu. All rights reserved.
//

#import "MutiselectController.h"
#import "SKTagView.h"
#import "Masonry.h"

@interface MutiselectController ()

@end

@implementation MutiselectController {
    SKTagView *_tagView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setup];
}

- (void)setup {
    _tagView = [SKTagView new];
    _tagView.backgroundColor = [UIColor whiteColor];
    _tagView.padding = UIEdgeInsetsMake(12, 12, 12, 12);
    _tagView.interitemSpacing = 15;
    _tagView.lineSpacing = 10;
    [self.view addSubview:_tagView];
    [_tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.left.right.equalTo(self.view);
    }];
    
    // 支持多选
    _tagView.maxSelectCount = 5;
    _tagView.didTapOverMax = ^(){
        NSLog(@"超出限制");
    };
    
    // 设置初始值
    NSArray *tags = @[@"测试标签", @"测试标签", @"测试标签", @"测试标签", @"测试标签",
                      @"测试标签", @"测试标签", @"测试标签", @"测试标签", @"测试标签"];
    for (NSString *t in tags) {
        SKTag *tag = [SKTag tagWithText:t];
        tag.selectedBgColor = [UIColor redColor];
        
        tag.textColor = [UIColor blackColor];
        tag.fontSize = 15;
        tag.padding = UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
        tag.bgColor = [UIColor whiteColor];
        tag.cornerRadius = 5;
        [_tagView addTag:tag];
    }
}

@end
