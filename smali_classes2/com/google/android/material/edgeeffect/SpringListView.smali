.class public Lcom/google/android/material/edgeeffect/SpringListView;
.super Landroid/widget/ListView;
.source "SpringListView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;

.field mOverScrollNested:Z

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mSkipSpringAnimationOnce:Z

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private mSpringListener:Lcom/google/android/material/edgeeffect/SpringEffectListener;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    .line 66
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 67
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 68
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowBottom:F

    .line 71
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringListView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 72
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 73
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastYVel:F

    .line 78
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSkipSpringAnimationOnce:Z

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/edgeeffect/SpringListView;Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/SpringListView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSkipSpringAnimationOnce:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/edgeeffect/SpringListView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSkipSpringAnimationOnce:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringListView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringListView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastYVel:F

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringEffectListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mSpringListener:Lcom/google/android/material/edgeeffect/SpringEffectListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringListView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastX:F

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/edgeeffect/SpringListView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastY:F

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringListView;FFFF)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/SpringListView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 794
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->resetTouch()V

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 106
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView;->setNestedScrollingEnabled(Z)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTouchSlop:I

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 114
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 115
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mNestedOffsets:[I

    .line 117
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 3

    .line 722
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 724
    invoke-interface {p2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 729
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 730
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p0

    if-lt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 734
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 735
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    .line 738
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    if-gt p1, p2, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 494
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 427
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 432
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->ensureTopGlow()V

    .line 434
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 435
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 436
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 439
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->ensureBottomGlow()V

    .line 441
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 442
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 443
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 449
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 474
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    .line 475
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 478
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 479
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 480
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGlowing:Z

    .line 481
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->stopNestedScroll()V

    .line 788
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->releaseGlows()V

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 898
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 901
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 747
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 748
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 749
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 752
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 753
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 754
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 704
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 713
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 684
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 685
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 500
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    .line 501
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollX()I

    move-result v0

    .line 502
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    .line 503
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView;->onScrolled(II)V

    .line 517
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringListView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 408
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 413
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 414
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringListView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 390
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 395
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 396
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fling(I)V
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x1388

    if-le p1, v1, :cond_0

    if-ge p1, v3, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/16 p1, 0x190

    .line 613
    invoke-super {p0, p1}, Landroid/widget/ListView;->fling(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-le p1, v3, :cond_1

    .line 616
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrollTop(Z)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setOverFling(Z)V

    .line 622
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->fling(I)V

    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 675
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 650
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 199
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->cancelScroll()V

    goto/16 :goto_1

    .line 173
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v4

    .line 177
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 179
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 180
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 182
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 183
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 188
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringListView;->setScrollState(I)V

    goto :goto_1

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->stopNestedScroll()V

    goto :goto_1

    .line 144
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 149
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_a

    move v0, v5

    goto :goto_0

    :cond_a
    move v0, v4

    :goto_0
    xor-int/2addr v0, v5

    .line 150
    invoke-direct {p0, v0, v4}, Lcom/google/android/material/edgeeffect/SpringListView;->isReadyToOverScroll(ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 154
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 157
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    .line 158
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 159
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 160
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringListView;->setScrollState(I)V

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 166
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringListView;->startNestedScroll(I)Z

    .line 207
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastX:F

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastY:F

    .line 209
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 632
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_0

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 633
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 634
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 215
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 220
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 224
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 227
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_a

    if-eq v1, v5, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 333
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 329
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 330
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    goto/16 :goto_3

    .line 323
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->cancelScroll()V

    goto/16 :goto_3

    .line 268
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 275
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 276
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 277
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 293
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 295
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mTouchSlop:I

    if-le v5, v6, :cond_8

    if-lez v2, :cond_7

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_7
    add-int/2addr v2, v6

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_8
    move v5, v3

    :goto_1
    if-eqz v5, :cond_9

    .line 306
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringListView;->setScrollState(I)V

    .line 311
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    if-ne v5, v4, :cond_e

    .line 312
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    .line 313
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringListView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 314
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 249
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 252
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 256
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringListView;->setScrollState(I)V

    goto :goto_2

    .line 262
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastYVel:F

    .line 265
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->resetScroll()V

    move v3, v4

    goto :goto_3

    .line 233
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mInitialTouchY:I

    .line 235
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d

    sub-int/2addr v1, v4

    .line 237
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 246
    :cond_d
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringListView;->startNestedScroll(I)Z

    :cond_e
    :goto_3
    if-nez v3, :cond_f

    .line 337
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 339
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastX:F

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mLastY:F

    .line 344
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    .line 125
    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 523
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/google/android/material/edgeeffect/SpringListView;->isReadyToOverScroll(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 533
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringListView;->scrollStep(II[I)V

    .line 535
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 536
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 542
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 561
    invoke-virtual {p0}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 562
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 564
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringListView;->pullGlows(FFFF)V

    .line 567
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 572
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringListView;->dispatchOnScrolled(II)V

    .line 575
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 576
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_7
    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 603
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 643
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 881
    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 884
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 454
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 455
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollState:I

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopNestedScroll()V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz p0, :cond_0

    .line 668
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    :cond_0
    return-void
.end method
