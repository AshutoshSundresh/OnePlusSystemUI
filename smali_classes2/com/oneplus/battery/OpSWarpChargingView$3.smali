.class Lcom/oneplus/battery/OpSWarpChargingView$3;
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

    .line 435
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

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

    .line 446
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingScaleDownAnimSet"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    .line 439
    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P4 onAnimationStart()"

    .line 440
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
