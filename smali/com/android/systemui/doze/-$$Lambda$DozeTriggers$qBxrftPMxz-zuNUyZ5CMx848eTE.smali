.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$qBxrftPMxz-zuNUyZ5CMx848eTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$qBxrftPMxz-zuNUyZ5CMx848eTE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$qBxrftPMxz-zuNUyZ5CMx848eTE;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$qBxrftPMxz-zuNUyZ5CMx848eTE;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$qBxrftPMxz-zuNUyZ5CMx848eTE;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeTriggers;->lambda$notifyDisplayAlwaysOnEnableChanged$5$DozeTriggers(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method
