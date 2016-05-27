//
//  MMSettingHomeController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMSettingHomeController.h"

@interface MMSettingHomeController ()

@property (nonatomic, strong) NSArray *groupsArr;

@end

@implementation MMSettingHomeController

#pragma mark - 重写init方法，在内部将tableView设置为分组样式！
- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}


#pragma mark - 数据源方法
// 组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.groupsArr.count;
}

// 行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // 1.组内所有内容
    NSDictionary *group = self.groupsArr[section];
    
    // 2.组内所有行
    NSArray *items = group[@"MMItems"];
    
    // 3.行数
    return items.count;
}

// 内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // 1.创建cell
    static NSString *ID = @"settingCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    // 2.设置数据
    // MARK: - 1.取数据
    // 1 取出组的所有数据
    NSDictionary *group = self.groupsArr[indexPath.section];
    
    // 2 取出组内所有行
    NSArray *items = group[@"MMItems"];
    
    // 3 取出某一行
    NSDictionary *item = items[indexPath.row];
    
    // MARK: - 2.赋值
    // 1 图片
    cell.imageView.image = [UIImage imageNamed:item[@"MMIcon"]];
    
    // 2 标题
    cell.textLabel.text = item[@"MMTitle"];
    
    
    // 3.返回cell
    return cell;

}




#pragma mark - 懒加载
- (NSArray *)groupsArr {
    if (!_groupsArr) {
        
        _groupsArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:self.plistName ofType:@"plist"]];
    }
    return _groupsArr;
}

@end
