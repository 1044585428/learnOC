#import <UIKit/UIKit.h>
#import "listBaseCell.h"
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self initData];
}

- (void)initUI {
    [self.view addSubview:self.collectionView];
}

- (void)initData {
    self.dataArray = @[@{ @"type": @"Grammar", @"dataList": @[@{ @"type": @"object1", @"name": @"1123123" },
                                                              @{ @"type": @"object2", @"name": @"1123123" },
                                                              @{ @"type": @"object3", @"name": @"1123123" }] },
                       @{ @"type": @"UIKit", @"dataList": @[@{ @"type": @"object1", @"name": @"1123123" },
                                                            @{ @"type": @"object2", @"name": @"1123123" },
                                                            @{ @"type": @"object3", @"name": @"1123123" }] }];
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _flowLayout.itemSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.width / 7);
        _flowLayout.minimumLineSpacing = 2; // cell上下间距
        _flowLayout.minimumInteritemSpacing = 0; // cell左右间距
        _flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_flowLayout];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    }

    return _collectionView;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.dataArray.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return ((listItemModel *)self.dataArray[section]).dataList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    listBaseCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
//    cell.data =
    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1];
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // 系统提示弹窗及按钮配置
    // 待学 UIAlertController UIAlertAction
    //    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:[NSString stringWithFormat:@"你点击了第%ld个元素",(long)indexPath.row + 1 ]  preferredStyle:UIAlertControllerStyleAlert];
    //    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _; action){
    //        NSLog(@"click %@",action.title);
    //    }];
    //    [alertController addAction:okAction];
    //    [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - custom method
// 获取当前cell的数据
- (NSDictionary*)rowDataWithIndexPath:(NSIndexPath *)IndexPath {
    // 数据保护 防止越界
    if(IndexPath.section < self.dataArray.count){
        listItemModel* sectionArray = self.dataArray[IndexPath.section];
        if(IndexPath.item < sectionArray.dataList.count){
            return self.dataArray[IndexPath.section][IndexPath.item];
        }
    }
    return nil;
}

// 根据model类型分配点击操作
- (void)dispatchTapHandler:(listItemModel *)model {
    
}

@end
