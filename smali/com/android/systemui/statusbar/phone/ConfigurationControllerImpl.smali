.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n+ 2 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImplKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n186#2:193\n187#2,4:195\n191#2:200\n186#2:201\n187#2,4:203\n191#2:208\n186#2:209\n187#2,4:211\n191#2:216\n186#2:217\n187#2,4:219\n191#2:224\n186#2:225\n187#2,4:227\n191#2:232\n186#2:233\n187#2,4:235\n191#2:240\n1591#3:194\n1592#3:199\n1591#3:202\n1592#3:207\n1591#3:210\n1592#3:215\n1591#3:218\n1592#3:223\n1591#3:226\n1592#3:231\n1591#3:234\n1592#3:239\n*E\n*S KotlinDebug\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n*L\n82#1:193\n82#1,4:195\n82#1:200\n91#1:201\n91#1,4:203\n91#1:208\n132#1:209\n132#1,4:211\n132#1:216\n145#1:217\n145#1,4:219\n145#1:224\n160#1:225\n160#1,4:227\n160#1:232\n166#1:233\n166#1,4:235\n166#1:240\n82#1:194\n82#1:199\n91#1:202\n91#1:207\n132#1:210\n132#1:215\n145#1:218\n145#1:223\n160#1:226\n160#1:231\n166#1:234\n166#1:239\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private density:I

.field private fontScale:F

.field private final inCarMode:Z

.field private final lastConfig:Landroid/content/res/Configuration;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private localeList:Landroid/os/LocaleList;

.field private mOrientation:I

.field private mSmallestScreenWidthDp:I

.field private uiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    .line 63
    iget p1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 64
    iget p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 65
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    .line 67
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const-string p1, "currentConfig"

    .line 68
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 70
    iget p1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    .line 74
    iget p1, v0, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mOrientation:I

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public notifyThemeChanged()V
    .locals 3

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 187
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 187
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 94
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 95
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 96
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 97
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 100
    :goto_1
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    .line 101
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v7

    .line 103
    const-class v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mOrientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", new: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ConfigurationControllerImpl"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 108
    invoke-virtual {v7}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mOrientation:I

    if-eq v6, v7, :cond_3

    .line 109
    invoke-virtual {v8}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFodIconVisibility()V

    .line 112
    :cond_3
    iput v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mOrientation:I

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged, oldUiMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newUiMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ConfigurationController"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    if-ne v2, v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    cmpg-float v6, v1, v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    if-eqz v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v8, :cond_8

    .line 127
    :cond_5
    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->updateDensityDpi(I)V

    .line 129
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->updateScreenResolutionManually(Landroid/content/Context;)V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 187
    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 132
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 133
    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    goto :goto_2

    .line 135
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 136
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 138
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mSmallestScreenWidthDp:I

    .line 142
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_a

    .line 144
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 187
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 145
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 146
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_c

    const-string v1, "onConfigurationChanged, trigger onUiModeChanged for listeners"

    .line 152
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 159
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 187
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 161
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onUiModeChanged()V

    goto :goto_4

    .line 165
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v1, -0x80000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_e

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 187
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 167
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOverlayChanged()V

    goto :goto_5

    :cond_e
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
