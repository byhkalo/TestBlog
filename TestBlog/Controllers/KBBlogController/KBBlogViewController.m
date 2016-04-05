//
//  KBBlogViewController.m
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#import "KBBlogViewController.h"
#import "KBBlogDelegate.h"

#import "KBMacros.h"

@interface KBBlogViewController ()

@property (nonatomic, strong) KBBlogDelegate *blogDelegate;
@end

@implementation KBBlogViewController

UIViewControllerViewGetterSynthesize(KBBlogView, blogView)

#pragma mark -
#pragma mark LoadingView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    KBBlogDelegate *blogDelegate = [[KBBlogDelegate alloc] init];
    self.blogDelegate = blogDelegate;
}

- (void)viewDidLoad {
    KBBlogDelegate *blogDelegate = self.blogDelegate;
    UITableView *tableView = self.blogView.tableView;
    
    blogDelegate.tableView = tableView;
    tableView.delegate = blogDelegate;
    tableView.dataSource = blogDelegate;
}

@end
