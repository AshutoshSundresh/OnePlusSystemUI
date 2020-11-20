.class Lcom/android/systemui/statusbar/phone/StatusBar$12;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4174
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$0()V
    .locals 1

    .line 4193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishedGoingToSleep$0$StatusBar$12()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;->lambda$onFinishedGoingToSleep$0()V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    .line 4177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 4178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4181
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2402(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 4183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 4188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12$y9_RRyD4rDeCN3cFnbhrxNLuI7g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12$y9_RRyD4rDeCN3cFnbhrxNLuI7g;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4195
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 4241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnFinishedWakingUp()V

    .line 4244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4249
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    .line 4248
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->launchCamera(ZI)V

    .line 4250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4252
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 3

    const-string v0, "StatusBar#onStartedGoingToSleep"

    .line 4201
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4203
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpGoingToSleep()V

    .line 4204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onStartedGoingToSleep()V

    .line 4210
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnStartedGoingToSleep()V

    .line 4213
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-string v0, "StatusBar#onStartedWakingUp"

    .line 4219
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4221
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 4225
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4226
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 4228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    .line 4232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onStartedWakingUp()V

    .line 4234
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method
