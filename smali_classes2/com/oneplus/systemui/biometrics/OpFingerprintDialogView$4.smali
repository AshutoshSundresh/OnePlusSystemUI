.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 3

    .line 677
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->isScreenOffUnlock()Z

    move-result v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFacelockStateChanged: type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOffUnlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 684
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 685
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 630
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep: why= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 634
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 635
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 671
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 672
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardDoneChanged(Z)V
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardDoneChanged: isKeyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingHideDialog= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v1, v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const-string p0, "unlock success skip onKeyguardDoneChanged"

    .line 729
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 735
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 648
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 649
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: showing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardClient= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingHideDialog= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v2, v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "unlock success skip onKeyguardVisibilityChanged"

    .line 656
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 663
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onQSExpendChanged(Z)V
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 742
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 743
    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQSExpendChanged: expend= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUnlockWithFingerprintPossible= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 752
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 756
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->handleQSExpandChanged(Z)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 601
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOff : fp client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showOnWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 640
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onShutdownDialogVisibilityChanged(Z)V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutdownDialogVisibilityChanged: show= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 782
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->handleShutdownDialogVisibilityChanged(Z)V

    return-void
.end method

.method public onShuttingDown()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "onShuttingDown"

    .line 764
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 703
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 704
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 705
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 706
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 707
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 609
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 610
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 611
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp: owner= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingHideDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v3, v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationDelayTime(Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const-string p0, "unlock success skip onStartedWakingUp"

    .line 619
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    .line 691
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 692
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 695
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 715
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 716
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 719
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
