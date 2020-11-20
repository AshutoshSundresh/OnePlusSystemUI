.class public final Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PowerOptionsAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 829
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 830
    sget v0, Lcom/android/systemui/R$drawable;->ic_settings_power:I

    const v1, 0x1040384

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 828
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showPowerOptionsMenu()V

    :cond_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
