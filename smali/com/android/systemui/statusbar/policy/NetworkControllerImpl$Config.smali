.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field alwaysShowCdmaRssi:Z

.field alwaysShowDataRatIcon:Z

.field alwaysShowNetworkTypeIcon:Z

.field enableRatIconEnhancement:Z

.field readIconsFromXml:Z

.field showAtLeast3G:Z

.field showRsrpSignalLevelforLTE:Z

.field showVolteIcon:Z

.field showVowifiIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1486
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1488
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1493
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    .line 1496
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    .line 1498
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    .line 1500
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    .line 1501
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    .line 1502
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->enableRatIconEnhancement:Z

    .line 1503
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVowifiIcon:Z

    return-void
.end method

.method static readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 4

    .line 1506
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;-><init>()V

    .line 1507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1509
    sget v2, Lcom/android/systemui/R$bool;->config_showMin3G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const v2, 0x1110020

    .line 1511
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1512
    sget v2, Lcom/android/systemui/R$bool;->config_hspa_data_distinguishable:I

    .line 1513
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_alwaysShowTypeIcon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    .line 1525
    sget v2, Lcom/android/systemui/R$bool;->config_showRsrpSignalLevelforLTE:I

    .line 1526
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    .line 1527
    sget v2, Lcom/android/systemui/R$bool;->config_hideNoInternetState:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1528
    sget v2, Lcom/android/systemui/R$bool;->config_display_volte:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    const-string v2, "carrier_config"

    .line 1531
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1533
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 1534
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 1535
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "always_show_data_rat_icon_bool"

    .line 1537
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    const-string/jumbo v3, "show_4g_for_lte_data_icon_bool"

    .line 1539
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    const-string/jumbo v3, "show_4g_for_3g_data_icon_bool"

    .line 1541
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    const-string v3, "hide_lte_plus_data_icon_bool"

    .line 1543
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1547
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 1548
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    :cond_1
    const/4 p0, 0x0

    const-string v2, "persist.sysui.rat_icon_enhancement"

    .line 1552
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->enableRatIconEnhancement:Z

    .line 1553
    sget p0, Lcom/android/systemui/R$bool;->config_display_vowifi:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVowifiIcon:Z

    return-object v0
.end method
