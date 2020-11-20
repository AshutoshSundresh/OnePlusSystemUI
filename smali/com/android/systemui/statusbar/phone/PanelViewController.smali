.class public abstract Lcom/android/systemui/statusbar/phone/PanelViewController;
.super Ljava/lang/Object;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field protected mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDownTime:J

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field protected mExpansionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected mLaunchingNotification:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field protected mOrientation:I

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field protected mPerf:Landroid/util/BoostFramework;

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected final mResources:Landroid/content/res/Resources;

.field private mSlopMultiplier:F

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field protected final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field private mTouchAboveFalsingThreshold:Z

.field protected mTouchActionDownX:F

.field protected mTouchActionDownY:F

.field private mTouchDisabled:Z

.field private mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field protected mTouchSlopExceededBeforeDown:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenThresholdReached:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mView:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 109
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 951
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1218
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnTouchListener(Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;)V

    .line 291
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnConfigurationChangedListener(Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;)V

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 294
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 295
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 297
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const p1, 0x3f19999a    # 0.6f

    .line 298
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 299
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 300
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 302
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const/high16 p4, 0x3f000000    # 0.5f

    .line 303
    invoke-virtual {p8, p4}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 304
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 305
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 307
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 308
    invoke-virtual {p8, p4}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 309
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 310
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setX2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const p1, 0x3f570a3d    # 0.84f

    .line 311
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setY2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 312
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 313
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 314
    new-instance p1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 315
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 316
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 317
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$bool;->config_enableNotificationShadeDrag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    .line 319
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 320
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    .line 321
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 323
    new-instance p1, Landroid/util/BoostFramework;

    invoke-direct {p1}, Landroid/util/BoostFramework;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    .line 327
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOrientation:I

    .line 330
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method private abortAnimations()V
    .locals 2

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mViewName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startOpening(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    return p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getFalsingThreshold()I

    move-result p0

    return p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p1
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 357
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1151
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1152
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endClosing()V
    .locals 2

    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    .line 569
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endClosing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelView.UnlockTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    :cond_1
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 9

    .line 435
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    .line 436
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    if-nez v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v1, p3, v1

    .line 437
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_4

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 483
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-nez p1, :cond_3

    .line 484
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 485
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    sub-long/2addr p1, p3

    .line 488
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const-wide/16 p1, 0x168

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOpeningHeight()F

    move-result p3

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->runPeekAnimation(JFZ)V

    goto/16 :goto_5

    .line 501
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_b

    .line 504
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onEmptySpaceClick(F)Z

    move-result p1

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    goto/16 :goto_5

    .line 439
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 442
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-double v5, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-double v7, v1

    .line 441
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 444
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 445
    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    if-ne v5, v4, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v3

    .line 448
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v2, :cond_7

    if-eqz p4, :cond_6

    goto :goto_2

    .line 457
    :cond_6
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    move p1, v4

    goto :goto_3

    .line 454
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    xor-int/2addr p1, v4

    .line 460
    :goto_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 461
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v6

    .line 460
    invoke-virtual {p4, p1, v1, v2, v6}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez p1, :cond_9

    if-eqz v5, :cond_9

    .line 464
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p4

    .line 465
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v1, p3, v1

    div-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-float p4, v0, p4

    .line 466
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v5, 0xba

    invoke-virtual {v2, v5, v1, p4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 468
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 470
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFalseTouch(FF)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZZ)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    if-eqz p1, :cond_a

    .line 472
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    move v4, v3

    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz v4, :cond_b

    .line 474
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    .line 508
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 509
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 519
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private isDirectionUpwards(FF)Z
    .locals 1

    .line 410
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float/2addr p1, v0

    .line 411
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    return v0

    .line 415
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isFalseTouch(FF)Z
    .locals 4

    .line 631
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 640
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 642
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFalseTouch isDirectionUpwards return false, touch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private synthetic lambda$createHeightAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method private synthetic lambda$setExpandedHeightInternal$0()V
    .locals 1

    .line 840
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimation$1()V
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    const/4 v0, 0x0

    .line 1061
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimationPhase1$2(Landroid/view/View;)V
    .locals 2

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 1117
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 3

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->showEmptyShadeView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    .line 239
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    return-void

    .line 242
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_2

    .line 243
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const/4 p3, 0x1

    new-array v0, p3, [F

    const/4 v1, 0x0

    .line 245
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    aput v2, v0, v1

    const-string v1, "expandedHeight"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 247
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelViewController$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return-void
.end method

.method private showEmptyShadeView()Z
    .locals 2

    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 1645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startOpening(Landroid/view/MotionEvent;)V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOpeningHeight()F

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->runPeekAnimation(JFZ)V

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v1

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getRotation()I

    move-result v2

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x530

    .line 391
    invoke-virtual {v3, v0, v4, p1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->writeAtFractionalPosition(IIII)V

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object p1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7

    .line 1083
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1084
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 1085
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1086
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1087
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelViewController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1105
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1106
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/view/View;

    .line 1108
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1109
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1110
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    :goto_0
    if-ge v4, p1, :cond_1

    .line 1111
    aget-object v3, v0, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 1115
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    neg-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/View;)V

    .line 1116
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1117
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3

    .line 1135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 1136
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1138
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1147
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V
    .locals 0

    .line 1199
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canCollapsePanelOnTouch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canPanelBeCollapsed()Z
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    return-void
.end method

.method public cancelPeek()V
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 963
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 929
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    const/4 v0, 0x1

    .line 932
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    .line 934
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collapse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelView.UnlockTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 939
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 940
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public collapseWithDuration(I)V
    .locals 1

    .line 1266
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1267
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    const/4 p1, -0x1

    .line 1268
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    return-void
.end method

.method public createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
    .locals 1

    .line 1281
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-object v0
.end method

.method protected createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
    .locals 1

    .line 1289
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-object v0
.end method

.method protected createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    .locals 1

    .line 1285
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    .line 1233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1234
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    const-string v0, "T"

    const-string v1, "f"

    if-eqz p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const/4 v2, 0x3

    aput-object p3, p1, v2

    const/4 p3, 0x4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, p1, p3

    const/4 p3, 0x5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    aput-object v2, p1, p3

    const/4 p3, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, p1, p3

    const/4 p3, 0x7

    const-string v3, " (started)"

    const-string v4, ""

    if-eqz v2, :cond_3

    .line 1235
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    aput-object v2, p1, p3

    const/16 p3, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, p1, p3

    const/16 p3, 0x9

    if-eqz v2, :cond_4

    .line 1237
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    aput-object v3, p1, p3

    const/16 p3, 0xa

    .line 1238
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    aput-object v0, p1, p3

    const-string p0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    .line 1230
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expand(Z)V
    .locals 3

    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 978
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 979
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    const/4 v1, 0x0

    .line 980
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    .line 981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 983
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v1, :cond_1

    .line 984
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 986
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 989
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 991
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    .line 992
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " expand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected fling(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .locals 7

    .line 658
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    if-eqz p2, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 661
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    .line 663
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelView.UnlockTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 668
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fling(FZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 653
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 595
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFalseTouch(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    .line 598
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 676
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getClearAllHeightWithPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandToTopOfClearAll(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    if-eqz v8, :cond_1

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getClearAllHeightWithPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move v12, v3

    goto :goto_1

    :cond_1
    move/from16 v12, p3

    .line 681
    :goto_1
    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    const/4 v15, 0x0

    cmpl-float v3, v3, v15

    if-lez v3, :cond_2

    if-eqz p2, :cond_2

    goto/16 :goto_6

    .line 687
    :cond_2
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_3

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " flingToHeight target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getMaxPanelHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getClearAllHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getClearAllHeightWithPadding()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    .line 694
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const/4 v5, -0x1

    if-eqz p2, :cond_7

    if-eqz p5, :cond_5

    cmpg-float v1, p1, v15

    if-gez v1, :cond_5

    move v1, v15

    goto :goto_3

    :cond_5
    move/from16 v1, p1

    .line 699
    :goto_3
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v14, v2

    move-object v10, v6

    move v13, v1

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    cmpl-float v1, v1, v15

    if-nez v1, :cond_6

    const-wide/16 v1, 0x15e

    .line 701
    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_6
    move v10, v5

    move-object v11, v6

    goto/16 :goto_5

    .line 704
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldUseDismissingAnimation()Z

    move-result v1

    if-eqz v1, :cond_9

    cmpl-float v1, p1, v15

    if-nez v1, :cond_8

    .line 706
    sget-object v1, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v1, 0x43480000    # 200.0f

    .line 707
    iget v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-long v1, v2

    .line 708
    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move v10, v5

    move-object v11, v6

    goto :goto_4

    .line 710
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 711
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v9, v2

    move-object v2, v6

    move v4, v12

    move v10, v5

    move/from16 v5, p1

    move-object v11, v6

    move v6, v9

    .line 710
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_4

    :cond_9
    move v10, v5

    move-object v11, v6

    .line 714
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 715
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, v11

    move v4, v12

    move/from16 v5, p1

    .line 714
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_4
    cmpl-float v1, p1, v15

    if-nez v1, :cond_a

    .line 720
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float v1, v1, p4

    float-to-long v1, v1

    invoke-virtual {v11, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 722
    :cond_a
    iget v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    if-eq v1, v10, :cond_b

    int-to-long v1, v1

    .line 723
    invoke-virtual {v11, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 726
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_c

    .line 727
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 728
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v10, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 735
    :cond_c
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v1

    .line 736
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBiometricUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->opFlingToHeightAnimatorForBiometricUnlock()V

    return-void

    .line 746
    :cond_d
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$3;

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    invoke-virtual {v11, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 772
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 773
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 682
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    return-void
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeightWithPadding()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 514
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getExpandedFraction()F
    .locals 0

    .line 902
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    return p0
.end method

.method public getExpandedHeight()F
    .locals 0

    .line 898
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    return p0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected getTouchSlop(Landroid/view/MotionEvent;)F
    .locals 1

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 346
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    .line 347
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method protected abstract initExpandButton()V
.end method

.method public instantCollapse()V
    .locals 3

    .line 1024
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantCollapse: mExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInstantExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 1028
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 1031
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1032
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 1033
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

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

.method public isEnabled()Z
    .locals 0

    .line 1277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFullyCollapsed()Z
    .locals 1

    .line 910
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyExpanded()Z
    .locals 1

    .line 906
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method public isTracking()Z
    .locals 0

    .line 918
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    return p0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .locals 0

    .line 1076
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return p0
.end method

.method protected abstract isWithinGameModeToolBoxRegion()Z
.end method

.method public synthetic lambda$createHeightAnimator$3$PanelViewController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$createHeightAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$setExpandedHeightInternal$0$PanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$setExpandedHeightInternal$0()V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimation$1$PanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimation$1()V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimationPhase1$2$PanelViewController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimationPhase1$2(Landroid/view/View;)V

    return-void
.end method

.method protected loadDimens()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->unlock_falsing_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected maybeVibrateOnOpening()V
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    :cond_0
    return-void
.end method

.method public notifyBarPanelExpansionChanged()V
    .locals 7

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1164
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    cmpl-float v5, v4, v1

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-nez v5, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    .line 1164
    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1171
    :cond_2
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1173
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyBarPanelExpansionChanged: isKeyguardShowing= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isKeyguardDone= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSwitching= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", expandedFraction= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1173
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1180
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1183
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_3

    .line 1184
    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_2

    :cond_3
    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4

    .line 1189
    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setQSExpanded(Z)V

    .line 1193
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onPanelExpansionChanged(FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final notifyExpandingFinished()V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method protected notifyExpandingStarted()V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method protected onClosingFinished()V
    .locals 0

    .line 1045
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method public onEmptySpaceClick(F)Z
    .locals 0

    .line 1212
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onMiddleClicked()Z

    move-result p0

    return p0
.end method

.method protected onExpandingFinished()V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method protected onTrackingStarted()V
    .locals 2

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 541
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackingStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelView.UnlockTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 529
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackingStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelView.UnlockTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 0

    .line 1068
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 0

    .line 1072
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected abstract opFlingToHeightAnimatorForBiometricUnlock()V
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .line 808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 814
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 826
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    .line 831
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public abstract resetViews(Z)V
.end method

.method protected setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 1125
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 1127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 3

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandedHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 4

    .line 835
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "ExpandedHeight set to NaN"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_1

    .line 839
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$3-TJ0A2OT3Q4yelawe6rfaI8nnw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$3-TJ0A2OT3Q4yelawe6rfaI8nnw;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 841
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 844
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3

    sub-float v1, p1, v0

    .line 845
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 847
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 849
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    goto :goto_0

    .line 851
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 852
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_4

    sub-float/2addr p1, v0

    .line 853
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 859
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v1

    if-gez v3, :cond_5

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz p1, :cond_5

    .line 860
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 861
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 862
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    cmpl-float p1, v0, v2

    if-nez p1, :cond_6

    goto :goto_1

    .line 866
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    div-float v2, p1, v0

    .line 865
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 867
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onHeightUpdated(F)V

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setLaunchingNotification(Z)V
    .locals 0

    .line 1262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 364
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_1
    return-void
.end method

.method protected shouldExpandToTopOfClearAll(F)Z
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fullyExpandedClearAllVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isClearAllVisible()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldGestureWaitForTouchSlop()Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method protected abstract showExpandButton()V
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 0

    .line 424
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    .line 425
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    .line 426
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 428
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    .line 429
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    :cond_0
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 1058
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$GuYBMkURoVUrgoMW3L5UanjAhbw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$GuYBMkURoVUrgoMW3L5UanjAhbw;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    const/4 v0, 0x1

    .line 1064
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    :cond_1
    :goto_0
    return-void
.end method
