#import "EmbraceNibParticle.h"
    
@interface EmbraceNibParticle ()

@end

@implementation EmbraceNibParticle

- (void) dismissLargeTable: (NSMutableDictionary *)sinkCycleVisible
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger animatedcontainerFromVisitor = sinkCycleVisible.count;
		UITableView *convolutionFlyweightEdge = [[UITableView alloc] init];
		[convolutionFlyweightEdge setDelegate:self];
		[convolutionFlyweightEdge setDataSource:self];
		[convolutionFlyweightEdge setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[convolutionFlyweightEdge setRowHeight:41];
		NSString *coordinatorFromStrategy = @"CellIdentifier";
		[convolutionFlyweightEdge registerClass:[UITableViewCell class] forCellReuseIdentifier:coordinatorFromStrategy];
		UIRefreshControl *coordinatorShapeBorder = [[UIRefreshControl alloc] init];
		[coordinatorShapeBorder addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[convolutionFlyweightEdge setRefreshControl:coordinatorShapeBorder];
		if (animatedcontainerFromVisitor > 2) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = animatedcontainerFromVisitor / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", animatedcontainerFromVisitor);
	});
}


@end
        