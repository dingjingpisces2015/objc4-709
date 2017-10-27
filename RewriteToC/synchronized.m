#import <Foundation/Foundation.h>
typedef void (^block_type)(id obj);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject *obj = [NSObject new];
        @synchronized(obj) {
            NSLog(@"sync log");
        }
    }
    return 0;
}
