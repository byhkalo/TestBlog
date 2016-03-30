//
//  KBMacros.h
//  TestBlog
//
//  Created by Konstantyn Bykhkalo on 30.03.16.
//  Copyright © 2016 Bykhkalo Konstantyh. All rights reserved.
//

#ifndef KBMacros_h
#define KBMacros_h

// Connect viewController and View
#define UIViewControllerViewGetterSynthesize(theClass, getterName) \
@dynamic getterName; \
- (theClass *)getterName { \
return ([self isViewLoaded] && [self.view isKindOfClass:[theClass class]] ? (theClass *)self.view : nil); \
}

#endif /* KBMacros_h */
