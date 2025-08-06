#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OperationTaskShape : NSObject

@property (nonatomic) NSMutableDictionary * canvasAtContext;

@property (nonatomic) int referenceContextBrightness;

@property (nonatomic) NSMutableDictionary * smallBufferOpacity;

@property (nonatomic) NSString * gradientLikeChain;

@property (nonatomic) int deferredGrayscaleLeft;

+ (instancetype) operationTaskShapeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) blocWithVisitor;

- (NSMutableDictionary *) adaptiveBlocPadding;

- (int) captionAdapterDelay;

- (NSMutableSet *) ephemeralSessionOrientation;

- (NSMutableArray *) sizedboxActivityRotation;

@end

NS_ASSUME_NONNULL_END
        