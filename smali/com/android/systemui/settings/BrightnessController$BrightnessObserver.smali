.class Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 153
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private getDuration()J
    .locals 3

    .line 162
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 163
    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_animation_duration"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-long v0, p0

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animationDuration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "StatusBar.BrightnessController"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$100()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 188
    :cond_1
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$500()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_3

    .line 190
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->getDuration()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;->access$602(Lcom/android/systemui/settings/BrightnessController;J)J

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$700()J

    move-result-wide v2

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 202
    :cond_3
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$900()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 203
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$700()J

    move-result-wide v2

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_5

    .line 211
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p2}, Lcom/android/systemui/settings/BrightnessController;->access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 220
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyBrightnessChange()V

    .line 224
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 225
    invoke-interface {p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 232
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$1100()Landroid/net/Uri;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$500()Landroid/net/Uri;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 242
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$900()Landroid/net/Uri;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
