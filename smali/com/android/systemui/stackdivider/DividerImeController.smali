.class Lcom/android/systemui/stackdivider/DividerImeController;
.super Ljava/lang/Object;
.source "DividerImeController.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;


# instance fields
.field private mAdjusted:Z

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private final mHandler:Landroid/os/Handler;

.field private mHiddenTop:I

.field private mImeWasShown:Z

.field private mLastAdjustTop:I

.field private mLastPrimaryDim:F

.field private mLastSecondaryDim:F

.field private mPaused:Z

.field private mPausedTargetAdjusted:Z

.field private mSecondaryHasFocus:Z

.field private mShownTop:I

.field private final mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field private mTargetAdjusted:Z

.field private mTargetPrimaryDim:F

.field private mTargetSecondaryDim:F

.field private mTargetShown:Z

.field private final mTransactionPool:Lcom/android/systemui/TransactionPool;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    .line 54
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 68
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    .line 74
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    .line 75
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    .line 96
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    .line 98
    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerImeController;)Lcom/android/systemui/TransactionPool;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerImeController;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/DividerImeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getSplitLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method private getSecondaryHasFocus(I)Z
    .locals 0

    .line 114
    invoke-static {p1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    return-object p0
.end method

.method private isDividerVisible()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$pause$1()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 360
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$resume$2()V
    .locals 3

    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    .line 376
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->finishAnimations()V

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    return-void
.end method

.method private synthetic lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 313
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onEnd(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 288
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    .line 289
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_0

    .line 290
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    :goto_0
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 291
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    .line 292
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    :cond_1
    return-void
.end method

.method private onProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez v1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object v1

    .line 260
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v3, p1

    .line 261
    :goto_0
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    int-to-float v5, v4

    mul-float/2addr v5, v2

    sub-float v2, v3, v2

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v7, v6

    mul-float/2addr v2, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 262
    invoke-virtual {v1, v2, v6, v4}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 263
    iget-object v2, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    sub-float/2addr v3, p1

    const/4 v1, 0x1

    .line 267
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 269
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    return-void
.end method

.method private startAsyncAnimation()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 300
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x113

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq v0, v1, :cond_2

    .line 303
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/wm/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerImeController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerImeController$1;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDimTargets()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 121
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 122
    :goto_0
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 123
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 124
    :goto_1
    iput v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    return-void
.end method

.method private updateImeAdjustState()V
    .locals 6

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 180
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object v1

    .line 182
    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz v3, :cond_0

    .line 183
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    invoke-virtual {v1, v3, v4, v3}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 184
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 188
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v4, v4, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 189
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 190
    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v4, v4, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v4, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 193
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v4, v5, v3}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 197
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 198
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v4, v4, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 199
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 200
    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 208
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 209
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v3, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 211
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 212
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getWmProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 223
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez v0, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x113

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x154

    :goto_1
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/Divider;->setAdjustedForIme(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$pause$1$DividerImeController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$pause$1()V

    return-void
.end method

.method public synthetic lambda$resume$2$DividerImeController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$resume$2()V

    return-void
.end method

.method public synthetic lambda$startAsyncAnimation$0$DividerImeController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/stackdivider/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    .line 241
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 242
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 243
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onImeStartPositioning(IIIZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 130
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    .line 131
    iput p3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    .line 132
    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/systemui/stackdivider/DividerView;->isHidden()Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->getSecondaryHasFocus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    :goto_0
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    if-gez p1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    .line 141
    :goto_1
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 142
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    :goto_2
    if-eq p1, p2, :cond_6

    .line 143
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eq p1, v0, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-ne v0, p2, :cond_5

    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 148
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eqz p1, :cond_6

    .line 151
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    .line 154
    :cond_6
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_7

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    return-void

    .line 159
    :cond_7
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_9

    if-eqz p4, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq p1, p2, :cond_9

    .line 167
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    :cond_9
    if-eqz p5, :cond_a

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    :cond_a
    return-void
.end method

.method public pause(I)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$WahrdFPYjNuoSU9XvYFcvsrVnqE;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$WahrdFPYjNuoSU9XvYFcvsrVnqE;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$BXScwQHRnelwDiQfpGXRr_rI2HQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$BXScwQHRnelwDiQfpGXRr_rI2HQ;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 276
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 277
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 280
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 281
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    :goto_0
    return-void
.end method
