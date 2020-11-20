.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$G3GtpcFL1wU6UwWYQdOeBLaGghE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$G3GtpcFL1wU6UwWYQdOeBLaGghE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$G3GtpcFL1wU6UwWYQdOeBLaGghE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeTriggers;->lambda$notifyDisplayAlwaysOnEnableChanged$4$DozeTriggers()V

    return-void
.end method
