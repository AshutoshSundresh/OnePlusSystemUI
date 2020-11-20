.class Lcom/oneplus/aod/bg/OpSketchPaint$1;
.super Ljava/lang/Object;
.source "OpSketchPaint.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 381
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "alpha"

    .line 384
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "radius"

    .line 385
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    .line 387
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$000(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 390
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$200(Lcom/oneplus/aod/bg/OpSketchPaint;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;

    .line 393
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v2}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;->getDirection()I

    move-result v3

    aget-object v2, v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v4, p1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 396
    :cond_1
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    .line 397
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p1, p1, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "spread update"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
