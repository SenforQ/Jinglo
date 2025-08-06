#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LastHandlerCache : NSObject

@property (nonatomic) NSMutableDictionary * singletonFunctionFlags;

+ (instancetype) lastHandlerCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) accessibleZoneInset;

- (NSMutableDictionary *) widgetFromKind;

- (int) hierarchicalPresenterPadding;

- (NSMutableSet *) mainAssetCount;

- (NSMutableArray *) advancedSessionHead;

@end

NS_ASSUME_NONNULL_END
        