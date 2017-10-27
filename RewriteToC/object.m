
#import <Foundation/Foundation.h>

@interface Test : NSObject

@property NSString *str __attribute__ ((section ("__DATA,__what_ever__")));
@property NSObject *obj;
- (void)doSomething;

@end

@implementation Test
- (void)doSomething
{}
@end
@interface OtherClass : NSObject

@property NSString *other;

@end
@implementation OtherClass
- (void)doSomething
{}
@end

int main(int argc, const char * argv[]) {
    Test *t = [[Test alloc] init];
    [t doSomething];
    [t doSomething];
    return 0;
}
