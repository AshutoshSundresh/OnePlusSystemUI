.class Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

.field final synthetic val$endY:F

.field final synthetic val$hiddenY:F

.field final synthetic val$isFloating:Z

.field final synthetic val$shownY:F

.field final synthetic val$startY:F

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FFZFFF)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iput p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iput p3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    iput-boolean p4, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    iput p5, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    iput p6, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    iput p7, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 365
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p1}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$endY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-boolean v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/wm/DisplayImeController;->access$300(Lcom/android/systemui/wm/DisplayImeController;IZLandroid/view/SurfaceControl$Transaction;)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->mCancelled:Z

    if-nez v1, :cond_1

    .line 372
    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayImeController;->getImms()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisplayImeController"

    const-string v2, "Failed to remove IME surface."

    .line 380
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 387
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    .line 340
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p1}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$x:F

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$startY:F

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget v2, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    invoke-static {v0, v3}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->access$100(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v4, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->val$shownY:F

    .line 350
    invoke-static {v0, v4}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->access$100(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p1

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wm/DisplayImeController;->access$200(Lcom/android/systemui/wm/DisplayImeController;IIIZLandroid/view/SurfaceControl$Transaction;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget v1, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v1, v6, :cond_2

    .line 353
    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 355
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 356
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
