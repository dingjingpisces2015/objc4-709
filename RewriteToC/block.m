#import <Foundation/Foundation.h>
typedef void (^block_type)(id obj);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        block_type blockName;
        {
            NSMutableArray *a = [[NSMutableArray alloc] init];
            blockName = ^(id obj){
                [a addObject:obj];
                NSLog(@"%@\n", a);
            };
            blockName = [blockName copy];
        }
        
        blockName(@1);
        blockName(@2);
        blockName(@3);
    }
    return 0;
}
