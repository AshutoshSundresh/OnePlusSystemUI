.class Lcom/oneplus/faceunlock/OpFacelockController$14;
.super Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 1742
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRecognize(I)V
    .locals 0

    .line 1746
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1750
    :cond_0
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "OpFacelockController"

    const-string p1, "onBeginRecognize"

    .line 1751
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCompared(IIIII)V
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    .line 1758
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1760
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpFacelockController"

    const-string p2, "onCompared 2 to remove timeout"

    .line 1761
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1764
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    :cond_1
    return-void
.end method

.method public onEndRecognize(III)V
    .locals 11

    .line 1771
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1776
    :cond_0
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1777
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1778
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p1

    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1781
    :cond_1
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1782
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4002(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1784
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndRecognize, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1787
    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4100(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSleep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simpin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1788
    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1789
    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    .line 1786
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    const-string v0, "face_bright"

    const-string v3, "face"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "1"

    if-nez p3, :cond_d

    .line 1794
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result p3

    if-eqz p3, :cond_b

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_6

    .line 1808
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->getFpFailTimeStamp()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x7d0

    cmp-long p1, v7, v9

    if-gtz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "0"

    .line 1810
    :goto_2
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "lock_unlock_success"

    if-eqz p1, :cond_6

    .line 1811
    :try_start_1
    invoke-static {p3, v0, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1813
    :cond_6
    invoke-static {p3, v3, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    :goto_3
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1817
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportFaceUnlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1821
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception e = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1834
    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_5

    .line 1839
    :cond_8
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "onEndRecognize, result ok to unlock and camera"

    .line 1840
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1842
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_9
    const-string p1, "onEndRecognize, result ok to skip bouncer"

    .line 1844
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1846
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1847
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1848
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1, v2, p2, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1849
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1850
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto/16 :goto_8

    :cond_a
    :goto_5
    const-string p1, "onEndRecognize, result ok to unlock"

    .line 1835
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1837
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_b
    :goto_6
    const-string p1, "not handle recognize"

    .line 1795
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1797
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1798
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1799
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1800
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    :cond_c
    return-void

    :cond_d
    const-string p1, "lock_unlock_failed"

    if-ne p3, v5, :cond_e

    const-string p2, "face_timeout"

    .line 1855
    invoke-static {p1, p2, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onEndRecognize: no face"

    .line 1856
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_e
    if-ne p3, v4, :cond_10

    const-string p1, "onEndRecognize: camera error"

    .line 1860
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1862
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1863
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1, v2, p2, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1865
    :cond_f
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_10
    const/4 v4, 0x4

    if-ne p3, v4, :cond_12

    const-string p1, "onEndRecognize: no permission"

    .line 1868
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1870
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3700(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1871
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1, v2, p2, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1873
    :cond_11
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1877
    :cond_12
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1878
    invoke-static {p1, v0, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1880
    :cond_13
    invoke-static {p1, v3, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :goto_7
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object v5

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Vibrator;

    move-result-object v6

    const/16 v7, 0x3fb

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/4 v10, 0x3

    invoke-static/range {v5 .. v10}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    .line 1886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEndRecognize: fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4600(Lcom/oneplus/faceunlock/OpFacelockController;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    :goto_8
    return-void
.end method
