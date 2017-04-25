//
//  NSString+reversedString.m
//  practice
//
//  Created by Logan on 2017/4/25.
//  Copyright © 2017年 com.Logan. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSObject(Reverse)

-(NSString*)reverseString:(NSString *)str{
    
    //int len = [str length] ;
    NSMutableString *reverseName = [[NSMutableString alloc] initWithCapacity:str.length];
    
    for(int i = str.length - 1; i >= 0; i--)
    {
        //method 1
        unichar strxmlchar = [str characterAtIndex:i];
        [reverseName appendString:[NSString stringWithFormat:@"%C",strxmlchar]];
     
        //method 2
        //reverseName = [reverseName stringByAppendingString:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    
    return reverseName;
}

@end
