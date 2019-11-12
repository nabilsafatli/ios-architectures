//
//  CharactersListViewController.m
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import "CharactersListViewController.h"
#import "CharacterTableViewCell.h"

@interface CharactersListViewController ()
@property (strong, nonatomic) IBOutlet UITableView *charactersTableView;

@end

@implementation CharactersListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.charactersTableView registerNib:[UINib nibWithNibName:@"CharacterTableViewCell" bundle:nil] forCellReuseIdentifier:@"CharacterTableViewCell"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CharacterTableViewCell *cell = [self.charactersTableView dequeueReusableCellWithIdentifier:@"CharacterTableViewCell"];
    
    cell.nameLabel.text = @"Lodder Wolfer";
    cell.classLabel.text = @"Warrior";
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

@end
