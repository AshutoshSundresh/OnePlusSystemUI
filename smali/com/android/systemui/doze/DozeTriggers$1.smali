.class Lcom/android/systemui/doze/DozeTriggers$1;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlwaysOnEnableChanged(Z)V
    .locals 3

    .line 833
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlwaysOnEnableChanged, active:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->access$900(Lcom/android/systemui/doze/DozeTriggers;Z)V

    .line 835
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->setLightSensorListening(Z)V

    if-eqz p1, :cond_2

    .line 837
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    .line 841
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->access$1000(Lcom/android/systemui/doze/DozeTriggers;)Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 842
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$1100(Lcom/android/systemui/doze/DozeTriggers;)Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateForPulseReason(I)V

    goto :goto_0

    :cond_1
    const-string p0, "onAlwaysOnEnableChanged: mAodDisplayViewManager is null!!!"

    .line 844
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :goto_0
    return-void
.end method

.method public onDozeSuppressedChanged(Z)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 799
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    .line 801
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 803
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public onFingerprintPoke()V
    .locals 3

    .line 821
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestFingerprintPoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->access$200(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public onNotificationAlerted(Ljava/lang/Runnable;)V
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 783
    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 788
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 790
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_2
    return-void
.end method

.method public onSingleTap()V
    .locals 3

    .line 815
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestSingleTapPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->access$200(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 2

    .line 809
    sget-boolean p1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DozeTriggers"

    const-string v0, "requestThreeKeyStatusPulse"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/16 p1, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/doze/DozeTriggers;->access$200(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V

    return-void
.end method
