.class Lcom/android/keyguard/KeyguardUpdateMonitor$15;
.super Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1993
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2103
    :pswitch_0
    invoke-super {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2100
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5800(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_1

    .line 2085
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto/16 :goto_1

    .line 2082
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    .line 1998
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2097
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto/16 :goto_1

    .line 2094
    :pswitch_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 2091
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    goto/16 :goto_1

    .line 2088
    :pswitch_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAssistantVisible(Z)V

    goto/16 :goto_1

    .line 2079
    :pswitch_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    .line 2076
    :pswitch_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    :pswitch_b
    const-string p1, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    .line 2071
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2072
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 2073
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    .line 2068
    :pswitch_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 2065
    :pswitch_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    goto/16 :goto_1

    .line 2062
    :pswitch_e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 2059
    :pswitch_f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    :pswitch_10
    const-string v0, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    .line 2053
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2055
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    .line 2056
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    .line 2033
    :pswitch_11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    .line 2042
    :pswitch_12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto/16 :goto_1

    .line 2045
    :pswitch_13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_1

    :pswitch_14
    const-string p1, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    .line 2048
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2049
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    .line 2050
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    .line 2039
    :pswitch_15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 2036
    :pswitch_16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 2027
    :pswitch_17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 2030
    :pswitch_18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 2024
    :pswitch_19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_1

    .line 2021
    :pswitch_1a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 2018
    :pswitch_1b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 2015
    :pswitch_1c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto :goto_1

    .line 2012
    :pswitch_1d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 2009
    :pswitch_1e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    goto :goto_1

    .line 2005
    :pswitch_1f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/battery/OpBatteryStatus;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/oneplus/battery/OpBatteryStatus;)V

    goto :goto_1

    .line 1995
    :pswitch_20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
