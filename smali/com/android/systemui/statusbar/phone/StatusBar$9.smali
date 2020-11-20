.class Lcom/android/systemui/statusbar/phone/StatusBar$9;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


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

    .line 3118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 3121
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBar"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 3123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3124
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3128
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 3131
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "reason"

    .line 3133
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "recentapps"

    .line 3134
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    .line 3137
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 3140
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz p1, :cond_5

    .line 3142
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotTouchable(Z)V

    .line 3144
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3145
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 3147
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3148
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_0

    :cond_7
    const-string p2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 3150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    :cond_8
    :goto_0
    return-void
.end method
