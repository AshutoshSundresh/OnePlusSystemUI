.class Lcom/oneplus/battery/OpSWarpChargingView$20;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->preloadAnimationList()V
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

    .line 872
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2802(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    .line 876
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2902(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadAnimationList: pre start anim keyguardShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3000(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3000(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAsset()V

    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$20;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->startAnimation(I)V

    :cond_1
    :goto_0
    return-void
.end method
