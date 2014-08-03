//
//  main.m
//  RandomItems
//
//  Created by Brigitte Michau on 2014/07/31.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        BNRContainer *containerOne = [[BNRContainer alloc] initWithContainerName:@"ContainerOne"
                                                                  containerValue:30
                                                                  containerItems:[[NSMutableArray alloc]init]];
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
           [containerOne addItemToContainer:item];
        }
        
        BNRContainer *containerTwo = [[BNRContainer alloc]initWithContainerName:@"ContainerTwo"
                                                                 containerValue:80
                                                                 containerItems:[[NSMutableArray alloc]init]];
        
        BNRItem *itemForContainerTwo = [[BNRItem alloc]initWithItemName:@"Stuffy Toy"
                                                         valueInDollars:20
                                                           serialNumber:@"ASDFAG"];
        
        [containerTwo addContainerToContainer:containerOne];
        [containerTwo addItemToContainer:itemForContainerTwo];
        
        NSLog(@"%@", containerTwo);
        
     }
    return 0;
}

