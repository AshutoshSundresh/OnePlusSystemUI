.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->lambda$onViewRemoved$0$NotificationIconContainer(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method
