#import "TaxonomyParameterCoord.h"
    
@interface TaxonomyParameterCoord ()

@end

@implementation TaxonomyParameterCoord

- (void) pushBetweenFeatureOperation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *sliderValueRight = [NSMutableSet set];
		for (int i = 7; i != 0; --i) {
			[sliderValueRight addObject:[NSString stringWithFormat:@"channelAroundComposite%d", i]];
		}
		for (NSString *operationTierSize in sliderValueRight) {
			//NSLog(@"Item in set:%@", operationTierSize);
		}
		CATransition *tickerAroundMemento = [CATransition animation];
		tickerAroundMemento.type = kCATransitionReveal;
		tickerAroundMemento.subtype = kCATransitionFromTop;
		//NSLog(@"sets= business12 gen_set %@", business12);
	});
}


@end
        