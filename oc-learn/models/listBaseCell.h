//
//  listCell.h
//  oc-learn
//
//  Created by 崔子剑 on 2024/3/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface listItemModel : NSObject
@property (nonatomic,strong) NSString* type;
@property (nonatomic,strong) NSDictionary* dataList;

@end

@interface listBaseCell : UICollectionViewCell
@property (nonatomic,strong) listItemModel* model;
@end

NS_ASSUME_NONNULL_END
