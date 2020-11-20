.class Lcom/oneplus/aod/bg/OpSketchPaint$2;
.super Ljava/lang/Object;
.source "OpSketchPaint.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/bg/OpSketchPaint;->getSketchAnimator()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpSketchPaint;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 413
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string p1, "spread end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 406
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 407
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string p1, "spread start"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
