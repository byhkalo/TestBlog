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
});

SPEC_END