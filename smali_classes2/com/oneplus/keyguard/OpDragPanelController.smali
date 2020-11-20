.class public Lcom/oneplus/keyguard/OpDragPanelController;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;,
        Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
    }
.end annotation


# static fields
.field private static mDropThreshold:I


# instance fields
.field private animationRunning:Z

.field private isStart:Z

.field private mArrowView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragEndAnimation:Landroid/animation/AnimatorSet;

.field private mDragStartAnimation:Landroid/animation/AnimatorSet;

.field private mDropped:Z

.field private mHander:Landroid/os/Handler;

.field private mHintAnimation:Landroid/animation/AnimatorSet;

.field private mHintText:Landroid/widget/TextView;

.field private mIndicatorLayout:Landroid/widget/LinearLayout;

.field private mIsReseting:Z

.field private mLastX:F

.field private mLastY:F

.field private mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

.field private mShakeAnimator:Landroid/animation/AnimatorSet;

.field private mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mTouched:Z

.field private mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

.field private shakeAnimationRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    .line 42
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 44
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    .line 48
    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    .line 50
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 57
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    .line 61
    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpDragPanelController$1;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    .line 155
    iput-object p3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    .line 156
    new-instance p1, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iput-object p4, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    .line 158
    sget p1, Lcom/android/systemui/R$id;->arrow_panel:I

    invoke-virtual {p4, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    .line 159
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/android/systemui/R$id;->hint:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    .line 161
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result p1

    const/16 p2, 0x438

    if-le p1, p2, :cond_0

    .line 163
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->op_emergency_bubble_drop_distance:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, p2}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result p1

    sput p1, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_emergency_bubble_drop_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    :goto_0
    const-wide/16 p1, 0x74

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0x4b

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createHintAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 29
    sget v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragStart(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createShakeAnimator()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return p1
.end method

.method private createHintAnimation()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getHintAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    .line 383
    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$4;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private createShakeAnimator()V
    .locals 5

    .line 414
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 415
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 416
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 418
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 419
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 420
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$5;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$5;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private getAlphaAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 6

    .line 370
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 372
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const-string v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 374
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object p0, v4, v2

    .line 375
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 376
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getHintAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 397
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_emergency_panel_indicator_arrow_animation_transY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x4b

    .line 401
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 402
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xb7

    .line 403
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 404
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    neg-float v7, v0

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x49f

    .line 405
    invoke-virtual {p0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 406
    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v8

    aput-object p0, v1, v7

    aput-object v3, v1, v4

    .line 409
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "scaleY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 327
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 328
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 329
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 330
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    new-instance p1, Lcom/oneplus/keyguard/OpDragPanelController$2;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$2;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method private getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "scaleY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 351
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 352
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 353
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 354
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    new-instance p1, Lcom/oneplus/keyguard/OpDragPanelController$3;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$3;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isAnimationRunning()Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    return p0
.end method

.method private isShakeAnimationRunning()Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    return p0
.end method

.method private onDragEnd()V
    .locals 3

    .line 234
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v0, :cond_4

    .line 235
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpDragPanelController"

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->isDrop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 239
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getAlphaAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 248
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz p0, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onDrop()V

    .line 251
    :cond_3
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "onDrop"

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private onDragStart(F)V
    .locals 12

    .line 213
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v0, :cond_2

    .line 214
    sget v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 215
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onDragStart:"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    sget v3, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_CIRCLE_COLOR:I

    const/4 v5, 0x0

    .line 221
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    const v0, -0x14ffd8

    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 223
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    sub-double/2addr v1, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v6

    double-to-int v1, v1

    .line 224
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1

    .line 225
    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_TEXT_COLOR:I

    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 226
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    add-double/2addr v8, v1

    mul-double/2addr v8, v6

    double-to-int v1, v8

    :cond_1
    move v6, v0

    move v7, v1

    .line 228
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawView(IIIII)V

    .line 229
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    .line 199
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 200
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    .line 201
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    .line 202
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    .line 203
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    .line 204
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    .line 205
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    .line 206
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetText()V

    .line 207
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpDragPanelController"

    const-string v0, "reset"

    .line 208
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetArrow(Z)V
    .locals 2

    .line 293
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "resetArrow"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move p1, v1

    .line 299
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 300
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 301
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private resetIndicatorLayout()V
    .locals 2

    .line 305
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "IndicatorLayout"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private resetText()V
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 493
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private resetTouchView()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 286
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 287
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 289
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->reset()V

    return-void
.end method

.method private restartAnimation()V
    .locals 2

    .line 312
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "restartAnimation"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    .line 316
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    .line 318
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startShakeAnimation()V

    .line 319
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startHintAnimation()V

    return-void
.end method

.method private startHintAnimation()V
    .locals 4

    .line 444
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnimation animationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 4

    .line 433
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShakeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    :cond_1
    return-void
.end method

.method private stopHintAnimation()V
    .locals 2

    .line 469
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAnimation animationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    .line 478
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x1

    .line 479
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    :cond_2
    return-void
.end method

.method private stopShakeAnimation()V
    .locals 2

    .line 455
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopShakeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    .line 464
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 173
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStart"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 177
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    .line 178
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    .line 179
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 183
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStop"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 187
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    .line 188
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
