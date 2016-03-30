//
//  KBBlogDelegate.m
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#import "KBBlogDelegate.h"

@implementation KBBlogDelegate

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

#pragma mark -
#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
