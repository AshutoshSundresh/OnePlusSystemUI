.class Lcom/oneplus/anim/OpCameraAnimateController$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "OpCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpCameraAnimateController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpCameraAnimateController;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0, p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$000(Lcom/oneplus/anim/OpCameraAnimateController;Ljava/lang/String;)Z

    move-result v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isFrontCamera "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$102(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 101
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/anim/OpGraphLight;->stop()V

    .line 103
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$400(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$300(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 5

    .line 111
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$600(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$502(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 115
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$600(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_hand_mode_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$702(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 117
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0, p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$000(Lcom/oneplus/anim/OpCameraAnimateController;Ljava/lang/String;)Z

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraUnavailable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isFrontCamera "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", OpUtils.isCutoutHide(mContext):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$500(Lcom/oneplus/anim/OpCameraAnimateController;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", oneHandMode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$700(Lcom/oneplus/anim/OpCameraAnimateController;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$500(Lcom/oneplus/anim/OpCameraAnimateController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$700(Lcom/oneplus/anim/OpCameraAnimateController;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1, v2}, Lcom/oneplus/anim/OpCameraAnimateController;->access$102(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 125
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    .line 126
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$400(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$800(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$300(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {p1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
