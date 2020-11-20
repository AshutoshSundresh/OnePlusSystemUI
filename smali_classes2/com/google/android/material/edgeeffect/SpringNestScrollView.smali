.class public Lcom/google/android/material/edgeeffect/SpringNestScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;,
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/edgeeffect/SpringNestScrollView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

.field private mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDisableEffectBottom:Z

.field private mDisableEffectTop:Z

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

.field private mGlowingBottom:Z

.field private mGlowingTop:Z

.field private mIsEmpty:Z

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOverScrollNested:Z

.field private mPullCount:I

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityY:I

.field private mVelocity_multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e99999a    # 0.3f

    .line 40
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 61
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 62
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 64
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 65
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 71
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 72
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 73
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 76
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    .line 77
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/edgeeffect/SpringNestScrollView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setActiveEdge(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    return p0
.end method

.method private cancelTouch()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 936
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    const v1, -0x800001

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 942
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 944
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    if-eqz v0, :cond_2

    return-void

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 948
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 949
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "SpringNestScrollView"

    const-string p1, "animation parameter out of range!"

    .line 937
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 116
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 117
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 118
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V

    .line 122
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 123
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v1, 0x44138000    # 590.0f

    .line 124
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 125
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 123
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 641
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 651
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 517
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 518
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 445
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->ensureTopGlow()V

    .line 448
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 451
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 454
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->ensureBottomGlow()V

    .line 457
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 458
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 460
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 466
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 492
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 493
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 496
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 497
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 499
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    .line 500
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    .line 932
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 990
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 993
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 671
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 672
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 673
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 677
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 678
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    .locals 2

    .line 756
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 524
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    .line 525
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    .line 526
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    .line 527
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onScrollChanged(IIII)V

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onScrolled(II)V

    .line 541
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 967
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 970
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 972
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 973
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 978
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringNestScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 420
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 425
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 426
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringNestScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 402
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 407
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 408
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fling(I)V
    .locals 7

    .line 761
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_9

    .line 762
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    const/16 p1, -0x3e8

    .line 764
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void

    .line 767
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void

    :cond_1
    const/16 v1, 0x1f4

    const/16 v3, 0x1388

    const/high16 v4, 0x3f800000    # 1.0f

    if-le p1, v1, :cond_2

    if-ge p1, v3, :cond_2

    .line 771
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/16 p1, 0x190

    .line 772
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void

    :cond_2
    const/16 v0, -0x960

    const/16 v1, -0x1388

    if-ge p1, v1, :cond_3

    .line 774
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_3

    .line 775
    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void

    :cond_3
    const/16 v5, -0x2710

    if-ge p1, v5, :cond_4

    .line 777
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    const/16 v6, 0x5dc

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_4

    .line 778
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityY:I

    goto :goto_0

    :cond_4
    if-ge p1, v1, :cond_6

    .line 779
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    .line 780
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    const/16 v5, 0x64

    if-ge v1, v5, :cond_5

    .line 781
    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void

    .line 784
    :cond_5
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityY:I

    :cond_6
    :goto_0
    if-le p1, v3, :cond_8

    .line 787
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    add-int/lit16 p1, p1, -0x3e8

    .line 788
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 789
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "net.oneplus.weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 790
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrollTop(Z)V

    goto :goto_1

    .line 792
    :cond_7
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrollTop(Z)V

    :goto_1
    return-void

    .line 796
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setOverFling(Z)V

    .line 797
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void

    .line 801
    :cond_9
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 146
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 247
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 187
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v5

    .line 194
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 196
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 212
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v3, v6, :cond_8

    .line 214
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_7

    if-lez v1, :cond_6

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_6
    add-int/2addr v1, v4

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    .line 225
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 229
    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v3, v6, :cond_d

    .line 230
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 231
    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    .line 175
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 178
    :cond_a
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 183
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    .line 184
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    goto :goto_3

    .line 151
    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 154
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 255
    :cond_d
    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 258
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityY:I

    const/16 v1, -0x1388

    if-ge v0, v1, :cond_1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    const/16 v0, -0x3e8

    .line 807
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->fling(I)V

    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityY:I

    .line 809
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x578

    .line 810
    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x960

    .line 812
    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 815
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 953
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 960
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    const/4 v1, 0x0

    .line 961
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 962
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 690
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p2, p4, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p4, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 705
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 706
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ge p2, p4, :cond_3

    .line 707
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2

    .line 712
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->computeVelocity()F

    move-result v0

    .line 715
    :cond_2
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 717
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    float-to-int v0, v0

    .line 718
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 723
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    if-nez v0, :cond_5

    .line 724
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-le p2, p4, :cond_5

    .line 725
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->computeVelocity()F

    move-result v0

    .line 732
    :cond_4
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 734
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    float-to-int v0, v0

    .line 735
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 739
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 272
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 276
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 279
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 383
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 379
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 380
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 320
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 327
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 328
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 329
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 344
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 346
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

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

    .line 357
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 361
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v5, v4, :cond_d

    .line 362
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 363
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 301
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 304
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 308
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 314
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 317
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 285
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_d
    :goto_3
    if-nez v3, :cond_e

    .line 387
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 389
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 395
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
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

    .line 548
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    .line 560
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollStep(II[I)V

    .line 561
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 562
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 568
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 588
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 589
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 591
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 594
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 599
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->dispatchOnScrolled(II)V

    .line 602
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 603
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

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

    .line 630
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 921
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 922
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 924
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->invalidateGlows()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 471
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 472
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    :cond_0
    return-void
.end method
