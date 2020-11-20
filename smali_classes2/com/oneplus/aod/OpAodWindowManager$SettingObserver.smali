.class final Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    .line 421
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_wake_enabled"

    .line 427
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodWindowManager;->access$1100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "aod_display_mode"

    .line 428
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodWindowManager;->access$1100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "prox_wake_enabled"

    .line 429
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodWindowManager;->access$1100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    .line 433
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$1100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 439
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 441
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const-string v0, "notification_wake_enabled"

    .line 443
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateNotificationWakeState(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const-string v0, "aod_display_mode"

    .line 445
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateAlwaysOnState(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string v0, "prox_wake_enabled"

    .line 447
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateMotionAwakeState(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v0, "oem_acc_blackscreen_gestrue_enable"

    .line 450
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 451
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method
