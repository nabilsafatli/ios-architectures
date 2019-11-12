//
//  InventoryItem.h
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InventoryItem : NSObject
@property int type;
@property (nonatomic, retain) NSString *name;
@end

NS_ASSUME_NONNULL_END

typedef enum type {
    kWeapon,
    kShield
} profession;
