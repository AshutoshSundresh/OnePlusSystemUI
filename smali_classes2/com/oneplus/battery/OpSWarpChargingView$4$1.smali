.class Lcom/oneplus/battery/OpSWarpChargingView$4$1;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView$4;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpSWarpChargingView$4;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView$4;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$4;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$4;

    iget-object p1, p1, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$502(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    .line 474
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$4;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
