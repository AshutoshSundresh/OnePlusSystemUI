.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final COLOR_BACKGROUND_DARK:I

.field private final COLOR_BACKGROUND_LIGHT:I

.field private final COLOR_KEY_DARK:I

.field private final COLOR_KEY_LIGHT:I

.field private final COLOR_KEY_TRANSPARENT:I

.field private final mActiveRegion:Landroid/graphics/Region;

.field private mBackButtonBounds:Landroid/graphics/Rect;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackgroundColor:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

.field private mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideNavBar:Z

.field private mHomeButtonBounds:Landroid/graphics/Rect;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHorizontal:Landroid/view/View;

.field private mImeShow:Z

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mImeVisible:Z

.field private mInCarMode:Z

.field private mIsCTSOn:Z

.field public mIsCustomNavBar:Z

.field private mIsHideNavBarOn:Z

.field private mIsImmersiveSticky:Z

.field private mIsInBrickMode:Z

.field private mIsLightBar:Z

.field private mIsPanelViewFullExpanded:Z

.field private mIsVertical:Z

.field private mKeyguardShow:Z

.field private mLastButtonColor:I

.field private mLastRippleColor:I

.field private mLayoutTransitionsEnabled:Z

.field private mNavBarMode:I

.field private final mNavColorSampleMargin:I

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private final mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

.field private mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsButtonBounds:Landroid/graphics/Rect;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRotationButtonBounds:Landroid/graphics/Rect;

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private mSamplingBounds:Landroid/graphics/Rect;

.field private mScreenOn:Z

.field private mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

.field private mShowNavKey:Z

.field private final mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field private mTmpLastConfiguration:Landroid/content/res/Configuration;

.field private mTmpPosition:[I

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field private mVertical:Landroid/view/View;

.field private mWakeAndUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 360
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 139
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 149
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 156
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 157
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 171
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 p2, 0x1

    .line 174
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 180
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 182
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 199
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    .line 220
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCTSOn:Z

    .line 223
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 224
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsHideNavBarOn:Z

    .line 226
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 229
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 230
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 234
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsPanelViewFullExpanded:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideNavBar:Z

    .line 301
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 309
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 336
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$khIxhJwBd7pJnFFXnq8zupcHrv8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 2042
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$3_rm_LYAhHXvCBhrsX10ry5w8OA;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 362
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 364
    const-class p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 365
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p2

    .line 367
    const-class v0, Lcom/android/systemui/model/SysUiState;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 368
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 370
    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget v1, Lcom/android/systemui/R$id;->menu_container:I

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    .line 371
    new-instance v0, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v1, Lcom/android/systemui/R$id;->ime_switcher:I

    sget v2, Lcom/android/systemui/R$drawable;->ic_ime_switcher_default:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 378
    new-instance v1, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    sget v2, Lcom/android/systemui/R$id;->rotate_suggestion:I

    .line 380
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v3, :cond_0

    .line 381
    sget v3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button2:I

    goto :goto_0

    .line 382
    :cond_0
    sget v3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button:I

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/RotationContextButton;-><init>(II)V

    .line 384
    new-instance v2, Lcom/android/systemui/statusbar/phone/ContextualButton;

    sget v3, Lcom/android/systemui/R$id;->accessibility_button:I

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_accessibility_button:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    if-nez p2, :cond_1

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->addButton(Lcom/android/systemui/statusbar/phone/ContextualButton;)V

    .line 393
    const-class v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 394
    new-instance v4, Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {v4, p1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 395
    new-instance v3, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    .line 396
    new-instance v4, Lcom/android/systemui/statusbar/phone/RotationButtonController;

    sget v5, Lcom/android/systemui/R$style;->RotateButtonCCWStart90:I

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 398
    :goto_1
    invoke-direct {v4, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/RotationButtonController;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 400
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 401
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 402
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 404
    new-instance p2, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    .line 405
    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p2, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 407
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->back:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->home:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->home_handle:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->recent_apps:I

    new-instance v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p2, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->menu_container:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    new-instance p2, Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 417
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_sample_horizontal_margin:I

    .line 418
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    .line 419
    new-instance p2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$WrUd8iBVzCnkNGlDjVh6Yvbf6CM;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$WrUd8iBVzCnkNGlDjVh6Yvbf6CM;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 423
    new-instance p2, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    invoke-direct {p2, p1, v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    .line 456
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportHideNavBar()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 457
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->nav:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    :cond_3
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_background_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    .line 461
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_background_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    .line 462
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_background_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 463
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_key_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    .line 464
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_key_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    .line 465
    sget p2, Lcom/android/systemui/R$color;->op_nav_bar_key_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 0

    .line 114
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSamplingRect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/graphics/Rect;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    return p0
.end method

.method private applyAppCustomColor()V
    .locals 2

    .line 761
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    const/high16 v1, -0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 763
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isDarkColor(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 764
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 766
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    :goto_0
    return-void
.end method

.method private changeHomeHandleAlpha(Z)V
    .locals 6

    .line 2062
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 2067
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNavigationBarHiddenMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2068
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2077
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v3, :cond_2

    .line 2079
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNavigationBarHiddenMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez v0, :cond_2

    .line 2081
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    const-string v0, "StatusBar/NavBarView"

    const-string v3, "hideHomeHandle when no bar and ime"

    .line 2083
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v1, :cond_9

    .line 2089
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v3, v2, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_4

    .line 2090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v4, 0x4

    .line 2094
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 2096
    :goto_4
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    :cond_9
    return-void
.end method

.method private chooseNavigationIconDrawableRes(II)I
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1047
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    move p1, p2

    :cond_1
    return p1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "null"

    .line 2029
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2031
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2031
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 1266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 1053
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 1759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1813
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1815
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "(unknown)"

    return-object p0

    :cond_0
    const-string p0, "(null)"

    return-object p0
.end method

.method private hasPinnedHeadsUp()Z
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDarkColor(I)Z
    .locals 1

    const/high16 v0, -0x1000000

    .line 642
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isLegible(II)Z
    .locals 2

    const/16 p0, 0xff

    .line 647
    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 648
    invoke-static {p1, p0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLightColor(I)Z
    .locals 1

    const/4 v0, -0x1

    .line 638
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .line 351
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 352
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v3

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 352
    invoke-virtual {p1, v2, v4, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    .line 356
    :cond_1
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void

    .line 340
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 2044
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 2045
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 1

    .line 2043
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$seIN-E1MF9Wb6jBs3U7jhkEzAV4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$seIN-E1MF9Wb6jBs3U7jhkEzAV4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNavBarColorChange(IZ)V
    .locals 6

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    .line 657
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNavBarColorChange barMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bgcolor: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mImeShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mKeyguardShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", expanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasPinnedHeadsUp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDockedStackExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLightBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isScreenCompat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenSaverOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBar/NavBarView"

    .line 658
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCTSOn:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTS()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 672
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTS()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCTSOn:Z

    .line 673
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateMainIcons(Z)V

    .line 678
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTS()Z

    move-result v1

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_2

    const/high16 p1, -0x67000000

    .line 679
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    const/4 v3, 0x4

    if-eqz v1, :cond_4

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 688
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eqz v1, :cond_6

    if-ne v0, v4, :cond_5

    .line 690
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_1

    .line 692
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    :goto_1
    return-void

    .line 697
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v1, :cond_7

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result p2

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez p2, :cond_8

    :cond_7
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-nez p2, :cond_8

    .line 701
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result p2

    if-nez p2, :cond_8

    if-eq v0, v3, :cond_8

    .line 705
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void

    .line 709
    :cond_8
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 711
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz p1, :cond_9

    .line 712
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void

    :cond_9
    const/4 p1, 0x1

    if-eq v0, p1, :cond_15

    if-ne v0, v4, :cond_a

    goto/16 :goto_5

    :cond_a
    if-ne v0, v3, :cond_c

    .line 720
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isScreenCompat()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 721
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_2

    .line 723
    :cond_b
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    :goto_2
    return-void

    :cond_c
    const/4 p1, 0x3

    if-ne v0, p1, :cond_d

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 727
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void

    .line 731
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsHideNavBarOn:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result p1

    if-nez p1, :cond_e

    .line 732
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void

    .line 736
    :cond_e
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isScreenCompat()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 737
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 739
    :cond_f
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-eqz p1, :cond_10

    .line 740
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 742
    :cond_10
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    if-nez p1, :cond_11

    .line 743
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 750
    :cond_11
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    if-ne p1, p2, :cond_12

    .line 751
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 752
    :cond_12
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    if-eq p1, p2, :cond_14

    if-ne p1, v2, :cond_13

    goto :goto_3

    .line 756
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->applyAppCustomColor()V

    goto :goto_4

    .line 754
    :cond_14
    :goto_3
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    :goto_4
    return-void

    .line 717
    :cond_15
    :goto_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 0

    .line 1767
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz p0, :cond_0

    .line 1768
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 1130
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    .line 1131
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setCanShowRotationButton(Z)V

    const/4 p1, 0x0

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->changeHomeHandleAlpha(Z)V

    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 8

    .line 988
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 990
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/high16 v5, -0x3d4c0000    # -90.0f

    goto :goto_2

    :cond_2
    move v5, v4

    .line 998
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 999
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientBackBtn: useAltBack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isRtl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", degrees="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getRotation()F

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "StatusBar/NavBarView"

    .line 999
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getRotation()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_4

    return-void

    .line 1008
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1009
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void

    .line 1015
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v3}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 1016
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navbar_back_button_ime_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float v4, p0

    :cond_6
    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 1018
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v5, v3, v2

    .line 1019
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v2

    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v3, v1, [F

    aput v4, v3, v2

    .line 1020
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    .line 1018
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1021
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x0

    .line 1026
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1028
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    .line 1032
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method private reloadNavIcons()V
    .locals 1

    .line 613
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 1635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSlippery(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 1436
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowFlag(IZ)V

    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1917
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1919
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 3

    .line 1300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1301
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    .line 1303
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1305
    sget p1, Lcom/android/systemui/R$style;->Animation_NavigationBarFadeIn:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 1307
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1312
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "StatusBar/NavBarView"

    const-string/jumbo p1, "view isn\'t attached"

    .line 1313
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1318
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1319
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_3
    return-void
.end method

.method private setWindowFlag(IZ)V
    .locals 3

    .line 1440
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1444
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    .line 1445
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 1449
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 1451
    :cond_3
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1455
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "StatusBar/NavBarView"

    const-string p1, "isn\'t attached"

    .line 1456
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1461
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1462
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 525
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 538
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 531
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 532
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.method private showNavKey()Z
    .locals 2

    .line 805
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNavKey mShowNavKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHomeApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isScreenCompat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isScreenCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImeShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mKeyguardShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isMultiWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isScreenSaveron: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isImmersiveSticky: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSystemUI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSystemUI()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInBrickMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/NavBarView"

    .line 806
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    if-eqz v0, :cond_1

    .line 821
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isScreenCompat()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v0, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez v0, :cond_1

    .line 828
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSystemUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateButtonColor(II)V
    .locals 1

    const/4 v0, 0x0

    .line 771
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    return-void
.end method

.method private updateButtonColor(IIZ)V
    .locals 5

    .line 775
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 779
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateButtonColor buttonColor=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rippleColor=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", caller: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x8

    .line 783
    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "StatusBar/NavBarView"

    .line 780
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 787
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    const/4 p3, 0x0

    move v0, p3

    .line 790
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 791
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 794
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v4, :cond_2

    .line 795
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 796
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColor(I)V

    .line 797
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setRippleColor(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method private updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 1583
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1585
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1590
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    .line 1591
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1592
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1595
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1596
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 1597
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr p3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v6, v6, v2

    .line 1598
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1596
    invoke-virtual {p2, v4, v5, p3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1599
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1601
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1602
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, p3, v3

    aget v5, p3, v2

    aget p3, p3, v3

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p3, v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget p0, p0, v2

    .line 1604
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p0, v2

    .line 1602
    invoke-virtual {p2, v4, v5, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1605
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1606
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateCarMode()Z
    .locals 3

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1794
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1797
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v0, v2, :cond_1

    .line 1798
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 1804
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    :cond_1
    return v1
.end method

.method private updateCurrentView()V
    .locals 4

    .line 1621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resetViews()V

    .line 1622
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1623
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setVertical(Z)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateCurrentView()V

    .line 1628
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 1629
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .locals 5

    .line 892
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 893
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 894
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 898
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz p1, :cond_4

    .line 899
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_docked2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    goto :goto_3

    .line 900
    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_docked:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    .line 906
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz p1, :cond_7

    .line 907
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    goto :goto_4

    .line 908
    :cond_7
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 910
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->updateIcons()V

    :cond_8
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v2, :cond_a

    .line 913
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_a
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 5

    .line 1281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1282
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1287
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1288
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1289
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 1291
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1292
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1293
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1294
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateMainIcons(Z)V
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz p1, :cond_0

    .line 923
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    .line 925
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz p1, :cond_1

    .line 926
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    goto :goto_0

    .line 927
    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_recent:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 929
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->updateIcons()V

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 932
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method private updateOrientationViews()V
    .locals 1

    .line 1610
    sget v0, Lcom/android/systemui/R$id;->horizontal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 1611
    sget v0, Lcom/android/systemui/R$id;->vertical:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Landroid/view/View;

    .line 1613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 1641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1642
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void
.end method

.method private updateSamplingRect()V
    .locals 8

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1551
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1552
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1553
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1554
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v1, v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 1555
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aget v1, v1, v4

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavColorSampleMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1558
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "NavigationBarView {"

    .line 1924
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1926
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 1927
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1929
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1933
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    if-gt v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v4

    .line 1934
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      window: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p1, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string p1, ""

    .line 1937
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    .line 1940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, p1, v1

    const/4 p3, 0x4

    .line 1943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, p3

    const-string p3, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 1939
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 1945
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1946
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    .line 1947
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz p3, :cond_3

    const-string/jumbo p3, "true"

    goto :goto_3

    :cond_3
    const-string p3, "false"

    :goto_3
    aput-object p3, p1, v4

    .line 1948
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 1945
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      mOrientedHandleSamplingRegion: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "back"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1953
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "home"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1954
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "rcnt"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    const-string p3, "rota"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    const-string p3, "a11y"

    invoke-static {p2, p3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string p1, "    }"

    .line 1958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz p1, :cond_4

    .line 1962
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->dump(Ljava/io/PrintWriter;)V

    .line 1964
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->dump(Ljava/io/PrintWriter;)V

    .line 1965
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1966
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1967
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    .line 1970
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 1972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "barMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsLightBar: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsHideNavBarOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsHideNavBarOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBackgroundColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastButtonColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastRippleColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 573
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    .line 938
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawableRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 939
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getBackDrawableRes()I
    .locals 2

    .line 946
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_back2:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_sysbar_back_quick_step2:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0

    .line 951
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_back:I

    sget v1, Lcom/android/systemui/R$drawable;->ic_sysbar_back_quick_step:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawableRes(II)I

    move-result p0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object p0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 577
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 958
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTS()Z

    move-result v0

    if-nez v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 964
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 967
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home_quick_step2:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    goto :goto_1

    .line 968
    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home2:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 969
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 978
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 981
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home_quick_step:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    goto :goto_3

    .line 982
    :cond_4
    sget v0, Lcom/android/systemui/R$drawable;->ic_sysbar_home:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 983
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-object v0
.end method

.method public getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->home_handle:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 581
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    return-object p0
.end method

.method public getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 564
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->nav:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    .line 569
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public getRegionSamplingHelper()Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
    .locals 0

    .line 2104
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    return-object p0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;
    .locals 1

    .line 589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->rotate_suggestion:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;

    return-object p0
.end method

.method public getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-object p0
.end method

.method hideRecentsOnboarding()V
    .locals 1

    .line 1507
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public isImeShow()Z
    .locals 0

    .line 2056
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    return p0
.end method

.method public isOverviewEnabled()Z
    .locals 1

    .line 605
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRecentsButtonDisabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRecentsButtonVisible()Z
    .locals 0

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenSaverOn()Z
    .locals 0

    .line 887
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarView(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$new$2$NavigationBarView(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->lambda$new$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method needsReorient(I)Z
    .locals 0

    .line 1617
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyNavBarColorChange(I)V
    .locals 1

    const/4 v0, 0x0

    .line 652
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(IZ)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    .line 1985
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1986
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 1989
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 1991
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onApplyWindowInsets: leftInset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rightInset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isGesturalMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1993
    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isLandScape:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "StatusBar/NavBarView"

    .line 1991
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v4

    move v1, v0

    .line 2002
    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 2003
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 2002
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2006
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->setInsets(II)V

    .line 2010
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 2011
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v4, v5

    .line 2012
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2013
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 2015
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    .line 2016
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    .line 2019
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    .line 2021
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistHandleViewController;->setBottomOffset(I)V

    .line 2023
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1837
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1838
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1841
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1842
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    .line 1861
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 1867
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationModeChanged(I)V

    .line 1868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1870
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->registerListeners()V

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarAttached()V

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    .line 1878
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 1876
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->setHomeButton(Landroid/view/View;)V

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onNavBarAttached()V

    const/4 v0, 0x0

    .line 1884
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->changeHomeHandleAlpha(Z)V

    .line 1887
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->bypassTransition(Z)V

    return-void
.end method

.method onBarTransition(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 515
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0

    .line 2050
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1774
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode()Z

    move-result p1

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 1779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 1781
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    .line 1782
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1784
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1895
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1896
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    const/4 v0, 0x0

    .line 1897
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1898
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    if-eqz v0, :cond_1

    .line 1902
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->unregisterListeners()V

    .line 1905
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarDetached()V

    .line 1908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onNavBarDetached()V

    .line 1911
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 1541
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1512
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1513
    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 1514
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    .line 1519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateOrientationViews()V

    .line 1521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1526
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 1529
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_gesture_button_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 1532
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onImmersiveSticky(Z)V
    .locals 2

    .line 852
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImmersiveSticky "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/NavBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 489
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeVisible:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x130

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 491
    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1569
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1571
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 1572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 1573
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 1574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 1575
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocation(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;Z)V

    .line 1577
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mActiveRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    .line 1578
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1726
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1727
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1728
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "StatusBar/NavBarView"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1729
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const-string v8, "onMeasure: (%dx%d) old: (%dx%d)"

    .line 1728
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    if-le v1, v0, :cond_1

    .line 1731
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1732
    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v7

    .line 1733
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eq v2, v8, :cond_4

    .line 1734
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    .line 1735
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v8, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1736
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 1737
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "y"

    goto :goto_1

    :cond_2
    const-string v6, "n"

    :goto_1
    aput-object v6, v3, v4

    const-string v4, "onMeasure: h=%d, w=%d, vert=%s"

    .line 1736
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1740
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1743
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1745
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 1746
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 1748
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1750
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1752
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v5, Landroid/graphics/Rect;

    sub-int/2addr v3, v2

    invoke-direct {v5, v7, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 1755
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 2

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/NavBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 1472
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->onNavigationModeChanged(I)V

    .line 1474
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    .line 1477
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onNavigationModeChanged(ILandroid/content/Context;)V

    .line 1480
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onNavigationModeChanged(I)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationContextButton;->onNavigationModeChanged(I)V

    .line 1483
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1484
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1486
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 1490
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateStates()V

    .line 1494
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLightBar(Z)V

    :cond_2
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    .line 1062
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-eqz p1, :cond_0

    .line 1064
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1, v0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1065
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1068
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowKeyguard(Z)V
    .locals 2

    .line 835
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 839
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 841
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 843
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    :goto_1
    if-nez v0, :cond_3

    .line 846
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :cond_3
    return-void
.end method

.method public onStatusBarPanelStateChanged()V
    .locals 0

    .line 1324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onTransientStateChanged(Z)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarTransientStateChanged(Z)V

    .line 507
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onNavBarTransientStateChanged(Z)V

    return-void
.end method

.method public refreshButtonColor()V
    .locals 3

    .line 879
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    return-void
.end method

.method public reorient()V
    .locals 5

    .line 1676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 1685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1690
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    const-string v2, "StatusBar/NavBarView"

    if-eqz v0, :cond_2

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorient(): rot="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1697
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    .line 1699
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    .line 1711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    if-eqz v0, :cond_7

    .line 1712
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "NavBarView onConfigurationChanged"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onConfigurationChanged(I)V

    .line 1718
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpEdgeNavGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;

    if-eqz v0, :cond_8

    .line 1719
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onConfigurationChanged(I)V

    :cond_8
    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 1502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 1503
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget p2, Lcom/android/systemui/R$id;->accessibility_button:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    .line 1139
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1141
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 1142
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-nez v0, :cond_1

    .line 1145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    return-void
.end method

.method public setHideNavBarOn(Z)V
    .locals 1

    .line 619
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsHideNavBarOn:Z

    if-eqz p1, :cond_0

    .line 621
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 623
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :goto_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1079
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1085
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 1270
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 1271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setLightBar(Z)V
    .locals 2

    .line 861
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-eq v0, p1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightBar to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/NavBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 868
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz p1, :cond_1

    .line 869
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :cond_1
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 1090
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1092
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    if-eq v0, v1, :cond_3

    .line 1095
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 1108
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 1109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 1116
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    .line 1118
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    goto :goto_1

    .line 1120
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 484
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 1564
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    .line 1275
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 1276
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 1277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setWindowVisible(Z)V

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onNavigationBarWindowVisibilityChange(Z)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1660
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 1662
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningExitToast()V

    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1668
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    .line 1667
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public updateDisabledSystemUiStateFlags()V
    .locals 7

    .line 1329
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 1332
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x1

    .line 1331
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v2, v4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x80

    .line 1333
    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v2, 0x100

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1335
    :goto_1
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v2, 0x400

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x2000000

    and-int/2addr p0, v5

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1337
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1339
    invoke-virtual {v1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateNavButtonIcon(Z)V
    .locals 1

    .line 1648
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideNavBar:Z

    .line 1650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1651
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1652
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_pin_on:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    goto :goto_0

    .line 1653
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_pin_off:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    .line 1651
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_1
    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 10

    .line 1159
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1161
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 1162
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1163
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 1164
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_1

    .line 1165
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1167
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1173
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHideNavBar:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcon(Z)V

    .line 1178
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v3, v1, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1190
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showImeSwitcher:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",disableImeSwitcher:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StatusBar/NavBarView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    sget v7, Lcom/android/systemui/R$id;->ime_switcher:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    invoke-virtual {v5, v7, v3}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 1195
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1197
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    const/high16 v5, 0x200000

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v3, v1

    .line 1201
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1204
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_8

    move v5, v1

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    if-nez v0, :cond_a

    .line 1207
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v8

    if-nez v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    if-eqz v8, :cond_a

    :cond_9
    move v8, v1

    goto :goto_7

    :cond_a
    move v8, v2

    .line 1212
    :goto_7
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v0, :cond_c

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v9, v1, :cond_b

    if-ne v9, v4, :cond_c

    :cond_b
    move v8, v1

    .line 1221
    :cond_c
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v4

    .line 1222
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v9}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1224
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v9

    xor-int/2addr v1, v9

    or-int/2addr v7, v1

    if-eqz v4, :cond_e

    .line 1225
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-nez v1, :cond_e

    move v3, v2

    move v8, v3

    goto :goto_8

    :cond_d
    if-eqz v4, :cond_e

    move v7, v2

    move v8, v7

    .line 1232
    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 1234
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1236
    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1237
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1243
    :cond_f
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNavButtonIcons: disableBack/Home/Recent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mNavBarMode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", disableFlags="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1247
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", useAltBack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v8, :cond_11

    move v4, v1

    goto :goto_9

    :cond_11
    move v4, v2

    :goto_9
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_a

    :cond_12
    move v3, v2

    :goto_a
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v7, :cond_13

    move v3, v1

    goto :goto_b

    :cond_13
    move v3, v2

    :goto_b
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    if-eqz v5, :cond_14

    move v2, v1

    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method public updateNavButtonState(Z)V
    .locals 0

    .line 629
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updatePanelSystemUiStateFlags()V
    .locals 4

    .line 1343
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v1, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x4

    .line 1374
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    .line 1369
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v1, 0x800

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1377
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v3

    .line 1376
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1378
    invoke-virtual {v2, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsPanelViewFullExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsPanelViewFullExpanded:Z

    const/4 v0, 0x1

    .line 1384
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->changeHomeHandleAlpha(Z)V

    :cond_0
    return-void
.end method

.method public updateSlippery()V
    .locals 1

    .line 1431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1431
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarMode:I

    .line 1397
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1402
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonState(Z)V

    .line 1406
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v1, :cond_2

    .line 1408
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 1411
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHaptic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBar/NavBarView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 1420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 1420
    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
