//
//  main.m
//  debug-objc
//
//  Created by Jason on 03/05/2017.
//
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface  Test : NSArray

@property NSString *str __attribute__ ((section ("__DATA,__objc_data")));
@property NSObject *obj;
- (void)doSomething;

@end

@implementation Test
- (void)doSomething
{}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Test *t = [[Test alloc] init];
        [t doSomething];
        Class newClass = objc_allocateClassPair([NSError class], "RuntimeErrorSubclass", 0);
        objc_registerClassPair(newClass);
    }
    return 0;
}
