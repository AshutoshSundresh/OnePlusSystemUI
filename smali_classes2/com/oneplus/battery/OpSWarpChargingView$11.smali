.class Lcom/oneplus/battery/OpSWarpChargingView$11;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpSWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

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

    .line 652
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 655
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingAnimP1"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 624
    sget-boolean p1, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpSWarpChargingView"

    const-string v0, "P1 onAnimationStart()"

    .line 625
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    .line 631
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 632
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 633
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 634
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 637
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1902(Lcom/oneplus/battery/OpSWarpChargingView;F)F

    .line 641
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 642
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v3}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 643
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v2, v3, [F

    iget-object v4, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v4}, Lcom/oneplus/battery/OpSWarpChargingView;->access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v5}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    int-to-float v3, v4

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 645
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 646
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    return-void
.end method
