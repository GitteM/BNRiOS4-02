//
//  BNRContainer.m
//  RandomItems
//
//  Created by Brigitte Michau on 2014/08/02.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

#pragma mark - Initializers

- (instancetype)initWithContainerName:(NSString *)cn
                       containerValue:(int)cv
                       containerItems:(NSMutableArray *)ci {
    
    self = [super init];
    
    if (self) {
        _containerName = cn;
        _containerValue = cv;
        _containerItems = ci;
        _containerItemsValue = 0;
        _containerTotalValue = cv;
        
    }
    return self;
}

#pragma mark - Getters and Setters

- (void)setContainerName:(NSString *)cn {
    _containerName = cn;
}

- (NSString *)containerName {
    return _containerName;
}

- (void)setContainerItems:(NSMutableArray *)ci {
    _containerItems = ci;
}
- (NSMutableArray *)containerItems {
    return _containerItems;
}

- (void)setContainerValue:(int)cv {
    _containerValue = cv;
}

- (int)containerValue {
    return _containerValue;
}

- (void)setContainerItemsValue:(int)iv {
    _containerItemsValue = iv;
}

- (int)containerItemsValue {
    return _containerItemsValue;
}

- (void)setContainerTotalValue:(int)tv {
    _containerTotalValue = tv;
}

- (int)containerTotalValue {
    return _containerTotalValue;
}

#pragma mark - Other Instance Methods

- (void)addItemToContainer:(BNRItem *)i {
    BNRItem *containerItem = i;
    self.containerItemsValue += containerItem.valueInDollars;
    self.containerTotalValue += containerItem.valueInDollars;
    [self.containerItems addObject:i];
}

- (void)addContainerToContainer:(BNRContainer *)ci {
    BNRContainer *containerInContainer = ci;
    self.containerItemsValue += containerInContainer.containerItemsValue;
    self.containerTotalValue += containerInContainer.containerTotalValue;
    [self.containerItems addObject:ci];
}

#pragma mark - Overriding the Description method

- (NSString *)description {
    
    NSString *descriptionString =
    [[NSString alloc]initWithFormat:@"\n Container Name: %@ (Container Value: $%d) \n\n Items %@, Items Value $%d \n\n TOTAL $%d",
                                   self.containerName,
                                   self.containerValue,
                                   self.containerItems,
                                   self.containerItemsValue,
                                   self.containerTotalValue];
    return descriptionString;
}

@end
