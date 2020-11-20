.class Lcom/oneplus/aod/bg/OpSketchPaint$3;
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

    .line 431
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 434
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 435
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$300(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Paint;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 437
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
