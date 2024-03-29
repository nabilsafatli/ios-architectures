//
//  CharactersListViewController.m
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import "CharactersListViewController.h"
#import "CharacterTableViewCell.h"
#import "CharactersService.h"

@interface CharactersListViewController ()
@property (strong, nonatomic) IBOutlet UITableView *charactersTableView;
@end

@implementation CharactersListViewController
CharactersService *service;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.charactersTableView registerNib:[UINib nibWithNibName:@"CharacterTableViewCell" bundle:nil] forCellReuseIdentifier:@"CharacterTableViewCell"];

    service = [CharactersService new];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CharacterTableViewCell *cell = [self.charactersTableView dequeueReusableCellWithIdentifier:@"CharacterTableViewCell"];
    Character *character = [[service getAll] objectAtIndex:indexPath.row];
    cell.nameLabel.text = character.name;
    cell.classLabel.text = @"Warrior";
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [service getAll].count;
}

@end
