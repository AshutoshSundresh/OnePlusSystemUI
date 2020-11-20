.class Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;
.super Landroid/database/ContentObserver;
.source "OpKeyguardClockInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "OpKeyguardClockInfoView"

    const-string v0, "receive mIsFormat12HourObserver changed"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$302(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z

    .line 101
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$400(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    return-void
.end method
