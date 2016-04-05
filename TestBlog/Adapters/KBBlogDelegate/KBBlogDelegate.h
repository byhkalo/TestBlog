//
//  KBBlogDelegate.h
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KBBlogTableCell.h"

@interface KBBlogDelegate : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@end
