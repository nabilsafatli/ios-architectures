//
//  CharacterTableViewCell.h
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CharacterTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *classLabel;

@end

NS_ASSUME_NONNULL_END
