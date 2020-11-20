.class Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodAlwaysOnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpAodAlwaysOnSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 178
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 179
    iput-object p2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 184
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 185
    iget-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$102(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Z)Z

    .line 187
    iget-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 188
    :goto_1
    iget-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object p1, p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysOnEnabled changed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {v4}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$100(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPowerSaveEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v4, v4, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    .line 192
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {v4}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlwaysOnSettingsObserver"

    .line 191
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 194
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->this$0:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-static {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->access$100(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 195
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onAlwaysOnEnableChanged(Z)V

    :cond_2
    return-void
.end method
