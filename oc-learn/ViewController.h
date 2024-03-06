//
//  ViewController.h
//  oc-learn
//
//  Created by 崔子剑 on 2023/12/4.
//
#import <UIKit/UIKit.h>

@interface ViewController:UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic,strong) UICollectionView* collectionView;
//@property (nonatomic,strong) UICollectionViewLayout* viewLayout;
@property (nonatomic,strong) UICollectionViewFlowLayout* flowLayout;
@property (nonatomic,strong) NSArray* dataArray;

@end

