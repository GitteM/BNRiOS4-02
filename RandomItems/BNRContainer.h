//
//  BNRContainer.h
//  RandomItems
//
//  Created by Brigitte Michau on 2014/08/02.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem

#pragma mark - 1. Instance Variables

{
    NSString *_containerName;
    NSMutableArray * _containerItems;
    int _containerValue;
    int _containerItemsValue;
    int _containerTotalValue;
}

- (void)setContainerName:(NSString *)cn;
- (NSString *)containerName;

- (void)setContainerItems:(NSMutableArray *)ci;
- (NSMutableArray *)containerItems;

- (void)setContainerValue:(int)cv;
- (int)containerValue;

- (void)setContainerItemsValue:(int)iv;
- (int)containerItemsValue;

- (void)setContainerTotalValue:(int)tv;
- (int)containerTotalValue;

#pragma mark - 2. Class Methods


#pragma mark - 3. Initializers

// Designated initializer for BNRContainer

- (instancetype)initWithContainerName:(NSString *)cn
                       containerValue:(int)cv
                       containerItems:(NSMutableArray *)ci;


#pragma mark - 4. Other Instance Methods

- (void)addItemToContainer:(BNRItem *)i;
- (void)addContainerToContainer:(BNRContainer *)ci;

@end
