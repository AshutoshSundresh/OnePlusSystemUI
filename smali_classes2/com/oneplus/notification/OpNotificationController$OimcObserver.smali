.class final Lcom/oneplus/notification/OpNotificationController$OimcObserver;
.super Landroid/database/ContentObserver;
.source "OpNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OimcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OpNotificationController;Landroid/os/Handler;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1147
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$700(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1152
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$2200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1154
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$2300()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1161
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1165
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$2300()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    :cond_0
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v2}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v2

    const-string v3, "HeadsUpNotificationZen"

    invoke-virtual {v2, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v2

    .line 1167
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v3, v2}, Lcom/oneplus/notification/OpNotificationController;->access$2402(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 1169
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$2200()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1170
    :cond_3
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v2}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v2

    const-string v3, "HeadsUpNotification"

    invoke-virtual {v2, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v2

    .line 1171
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    if-ne v2, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v3, v0}, Lcom/oneplus/notification/OpNotificationController;->access$2502(Lcom/oneplus/notification/OpNotificationController;Z)Z

    .line 1173
    :cond_5
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OIMC update uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBlockedByBrick: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1175
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$2400(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mBlockedByGame: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1176
    invoke-static {p0}, Lcom/oneplus/notification/OpNotificationController;->access$2500(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNotificationController"

    .line 1174
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
