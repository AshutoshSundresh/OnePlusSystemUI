.class final Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 739
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 744
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 745
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;Landroid/net/Uri;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChange(ZLjava/util/Collection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 782
    invoke-virtual {p0, p1, p2, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    return-void
.end method
