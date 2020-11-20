.class Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->onChange(ZLandroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;Landroid/net/Uri;I)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 748
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "aod_clock_style"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$userId:I

    invoke-static {v0, v5}, Lcom/oneplus/aod/OpAodUtils;->checkAodStyle(Landroid/content/Context;I)V

    .line 752
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB(Z)V

    .line 754
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v1, v1, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 760
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_4

    .line 762
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->disable()V

    goto :goto_1

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "aod_display_text"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    goto :goto_1

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "op_custom_horizon_light_animation_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    goto :goto_1

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "op_custom_unlock_animation_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 772
    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 771
    :goto_0
    invoke-static {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1702(Z)Z

    :cond_4
    :goto_1
    return-void
.end method
