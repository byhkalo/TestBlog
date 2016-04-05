//
//  KBBlogDelegate.m
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#import "KBBlogDelegate.h"

NSString *cellIdentifier = nil;

@interface KBBlogDelegate ()
@property (nonatomic, strong) NSArray *postsArray;

- (void)getPosts;
@end

@implementation KBBlogDelegate

#pragma mark -
#pragma mark Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self getPosts];
        cellIdentifier = NSStringFromClass([KBBlogTableCell class]);
    }
    return self;
}

- (void)getPosts {
    //get posts from network;
}

#pragma mark -
#pragma mark Accessors

- (void)setPostsArray:(NSArray *)postsArray {
    _postsArray = postsArray;
    [self.tableView reloadData];
}

- (void)setTableView:(UITableView *)tableView {
    if (![tableView dequeueReusableCellWithIdentifier:cellIdentifier]) {
        UINib *nib = [UINib nibWithNibName:cellIdentifier bundle:nil];
        [[self tableView] registerNib:nib forCellReuseIdentifier:cellIdentifier];
    }
}

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.postsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    KBBlogTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell) {
        
    }
    return nil;
}

#pragma mark -
#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
