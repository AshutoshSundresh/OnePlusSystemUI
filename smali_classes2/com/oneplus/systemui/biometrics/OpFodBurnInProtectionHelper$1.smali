.class Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodBurnInProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    const-string v0, "OpFodBurnInProtectionHelper"

    const-string v1, "onStartedWakingUp"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    return-void
.end method
