.class Lcom/oneplus/battery/OpNewWarpChargingView$19;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->preloadAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1902(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    .line 849
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2002(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadAnimationList: pre start anim keyguardShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAsset()V

    goto :goto_0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2200(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$19;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->startAnimation(I)V

    :cond_1
    :goto_0
    return-void
.end method
