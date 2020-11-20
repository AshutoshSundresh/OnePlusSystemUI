.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;
.super Landroid/database/ContentObserver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 358
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_fullscreen_gesture_type"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v3}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpStatusBar"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$402(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)I

    .line 365
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v4, 0x1

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v1

    .line 367
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-eq v0, p1, :cond_1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture side to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    .line 374
    :cond_1
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 375
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result p1

    .line 376
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v0

    if-eq v0, v4, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez v0, :cond_3

    .line 377
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v4

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 v0, v1, 0x1

    const-string v1, "buttons_show_on_screen_navkeys"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkNavigationBarState()V

    return-void
.end method
