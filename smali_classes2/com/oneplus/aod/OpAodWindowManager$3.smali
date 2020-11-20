.class Lcom/oneplus/aod/OpAodWindowManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 187
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$600(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$600(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodWindowManager;->access$702(Lcom/oneplus/aod/OpAodWindowManager;Z)Z

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$700(Lcom/oneplus/aod/OpAodWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$900(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getWakingUpReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$802(Lcom/oneplus/aod/OpAodWindowManager;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "AodWindowManager"

    const-string v0, "onStartedWakingUp"

    .line 193
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 180
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$500(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->onUserSwitched(I)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 200
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 201
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$3;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$500(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->onUserUnlocked()V

    return-void
.end method
