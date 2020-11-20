.class public Lcom/oneplus/onlineconfig/OpFingerprintConfig;
.super Ljava/lang/Object;
.source "OpFingerprintConfig.java"


# instance fields
.field private mAppUnsupportAccelerateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FingerprintConfig"

    const/4 v1, 0x3

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    .line 23
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->initUnsupporAcceleratetList()V

    return-void
.end method

.method private initUnsupporAcceleratetList()V
    .locals 2

    const-string v0, "FingerprintConfig"

    const-string v1, "initUnsupporAcceleratetList"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.shuqiyuedu823.google"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.sdu.didi.psnger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.oppo.im"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.calculator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v0, "com.nearme.gamecenter"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public isAppSupportAccelerate(Ljava/lang/String;)Z
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isAppSupportAccelerate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerprint.unsupportaccelete.test"

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
