.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x5a2f0b56

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p2, v0, :cond_2

    const v0, 0x1df32313

    if-eq p2, v0, :cond_1

    const v0, 0x1e1f7f95

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v2

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$GeneralBroadcastReceiver;->this$0:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    invoke-static {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->access$500(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;)V

    return-void
.end method
