.class public Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;
    }
.end annotation


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDark:Z

.field private mDelayTouchFeedback:Z

.field private mDrawingHardwareGlow:Z

.field private final mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

.field private final mExitHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

.field private mGlowAlpha:F

.field private mGlowScale:F

.field private final mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDark:Z

.field private mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPressed:Z

.field private mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRipplePaint:Landroid/graphics/Paint;

.field private final mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHardware:Z

.field private final mTargetView:Landroid/view/View;

.field private final mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    .line 87
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mType:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    .line 459
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->key_button_ripple_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return p1
.end method

.method private drawHardware(Landroid/graphics/RecordingCanvas;)V
    .locals 10

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mType:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    sget-object v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 187
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;)V
    .locals 9

    .line 116
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v3, :cond_2

    move v4, v2

    :cond_2
    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v1

    .line 131
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mType:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    sget-object v3, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    if-ne p0, v3, :cond_4

    sub-float p0, v1, v5

    sub-float v3, v2, v4

    add-float/2addr v5, v1

    add-float v6, v2, v4

    move-object v1, p1

    move v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v8, v0

    .line 132
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    neg-float v3, v5

    move-object v1, p1

    move v2, v3

    move v4, v5

    move-object v6, v0

    .line 137
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_3
    return-void
.end method

.method private endAnimations(Ljava/lang/String;Z)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private enterHardware()V
    .locals 9

    const-string v0, "enterHardware"

    const/4 v1, 0x1

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 392
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    .line 393
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 395
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v1

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v1, 0x15e

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 403
    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v6

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 405
    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 412
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 413
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 415
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 419
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 420
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 423
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 426
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 429
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 430
    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-nez v0, :cond_1

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitHardware()V

    :cond_1
    return-void
.end method

.method private enterSoftware()V
    .locals 3

    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 306
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 308
    fill-array-data v0, :array_0

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    .line 311
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitSoftware()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private exitHardware()V
    .locals 4

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 445
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v1, 0x1c2

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 448
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 453
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private exitSoftware()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 324
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "glowAlpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1c2

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getExtendEnd()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object p0
.end method

.method private getExtendSize()I
    .locals 1

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getExtendStart()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object p0
.end method

.method private getMaxGlowAlpha()F
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private getRippleSize()I
    .locals 1

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 387
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private isHorizontal()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$Xl4rWJU_4TFxkXeTg6i8PM566MQ(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V

    return-void
.end method

.method public static synthetic lambda$_NjSlP8uc8G3rFUDxQkVsRHA4H4(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    return-void
.end method

.method private setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void
.end method

.method private setExtendStart(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void
.end method

.method private setPressedHardware(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 334
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$KeyButtonRipple$Xl4rWJU_4TFxkXeTg6i8PM566MQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$KeyButtonRipple$Xl4rWJU_4TFxkXeTg6i8PM566MQ;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 338
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    if-eqz p1, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V

    goto :goto_0

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitHardware()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setPressedSoftware(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 289
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$KeyButtonRipple$_NjSlP8uc8G3rFUDxQkVsRHA4H4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$KeyButtonRipple$_NjSlP8uc8G3rFUDxQkVsRHA4H4;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 293
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mVisible:Z

    if-eqz p1, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitSoftware()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public abortDelayedRipple()V
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getGlowAlpha()F
    .locals 0

    .line 194
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    return p0
.end method

.method public getGlowScale()F
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 2

    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 219
    aget v2, p1, v1

    const v4, 0x10100a7

    if-ne v2, v4, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 224
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-eq p1, v1, :cond_2

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressed(Z)V

    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    return v3

    :cond_2
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 95
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDark:Z

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDelayTouchFeedback:Z

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 199
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 250
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 251
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedHardware(Z)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedSoftware(Z)V

    :goto_0
    return-void
.end method

.method public setType(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mType:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    return-void
.end method
