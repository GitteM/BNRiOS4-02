//
//  main.m
//  RandomItems
//
//  Created by Brigitte Michau on 2014/07/31.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
     
        NSLog(@"Chapter 1, Bronze Challenge: Bug Finding %@", items[10]);

        items = nil;
    }
    
    return 0;
}

