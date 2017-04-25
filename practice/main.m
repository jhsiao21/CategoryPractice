//
//  main.m
//  practice
//
//  Created by Logan on 2017/4/21.
//  Copyright © 2017年 com.Logan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Reverse.h"

@interface SampleClass : NSObject
{
    NSString *name;
}
-(void)setInternalString;
-(NSString*)getExternalString;

@end

@interface SampleClass ()
{
    NSString* internalString;
}
@end

@implementation SampleClass

-(void)setInternalString{
    internalString = [NSString stringWithFormat:@"KKBOX iOS 訓練教材"];
}

-(NSString*)getExternalString{
    return [internalString reverseString:internalString];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SampleClass *sampleClass = [[SampleClass alloc]init];
        [sampleClass setInternalString];
        NSLog(@"ReversedString:%@",[sampleClass getExternalString]);
    }
    return 0;
}
