#line 1 "Tweak.xm"







#import "Tweak.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class YTMainAppVideoPlayerOverlayView; 
static void (*_logos_orig$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$)(_LOGOS_SELF_TYPE_NORMAL YTMainAppVideoPlayerOverlayView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$(_LOGOS_SELF_TYPE_NORMAL YTMainAppVideoPlayerOverlayView* _LOGOS_SELF_CONST, SEL, BOOL); 

#line 10 "Tweak.xm"
 
static void _logos_method$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$(_LOGOS_SELF_TYPE_NORMAL YTMainAppVideoPlayerOverlayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) { 
	UIView * background = (UIView *) [self backgroundView];
	[background setAlpha:(CGFloat)0];
	_logos_orig$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTMainAppVideoPlayerOverlayView = objc_getClass("YTMainAppVideoPlayerOverlayView"); MSHookMessageEx(_logos_class$_ungrouped$YTMainAppVideoPlayerOverlayView, @selector(setControlsOverlayVisible:), (IMP)&_logos_method$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$, (IMP*)&_logos_orig$_ungrouped$YTMainAppVideoPlayerOverlayView$setControlsOverlayVisible$);} }
#line 17 "Tweak.xm"
