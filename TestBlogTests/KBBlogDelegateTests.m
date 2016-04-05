//
//  KBBlogDelegateTests.m
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#import <Kiwi.h>

#import "KBBlogDelegate.h"

SPEC_BEGIN(KBBlogDelegateSpec)

describe(@"KBBlogDelegateSpec", ^{

    __block KBBlogDelegate *blogDelegate = nil;
    
    context(@"when create new delegate should get posts from networkManager", ^{
        
        beforeEach(^{
            blogDelegate = [[KBBlogDelegate alloc] init];
        });
        
        afterEach(^{
            blogDelegate = nil;
        });
        
        it(@"should not be nil", ^{
            [[blogDelegate shouldNot] beNil];
        });
        
        it(@"should get posts from network", ^{
           
        });
    });
    
    context(@"when downloaded first pack of post", ^{
        it(@"should set downloaded posts to postArray property", ^{
            
        });
        
        it(@"should reload tableView", ^{
            
        });
    });
    
    context(@"When set new tableView to property", ^{
        __block UITableView *tableView = nil;
        NSString *cellIdentifier = NSStringFromClass([KBBlogTableCell class]);
        
        beforeEach(^{
            blogDelegate = [[KBBlogDelegate alloc] init];
            tableView = [[UITableView alloc] init];
        });
        
        afterEach(^{
            blogDelegate = nil;
            tableView = nil;
        });

        
        it(@"should register cell from xib", ^{
            [[tableView should] receive:@selector(dequeueReusableCellWithIdentifier:) withArguments:cellIdentifier];
            [[tableView should] receive:@selector(registerNib:forCellReuseIdentifier:)];
            blogDelegate.tableView = tableView;
            
            id cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
            [[cell should] beKindOfClass:[KBBlogTableCell class]];
        });
    });
});

SPEC_END