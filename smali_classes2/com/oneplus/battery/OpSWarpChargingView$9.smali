.class Lcom/oneplus/battery/OpSWarpChargingView$9;
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

    .line 582
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

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

    .line 593
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingAnimP2"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    .line 586
    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P2 onAnimationStart()"

    .line 587
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
