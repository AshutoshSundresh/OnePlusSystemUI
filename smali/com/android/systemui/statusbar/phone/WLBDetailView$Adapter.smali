.class public Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;
.super Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;
.source "WLBDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/WLBSwitchController;Lcom/android/systemui/statusbar/phone/WLBDetailView;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    return-void
.end method

.method private getPositionByMode(I)I
    .locals 2

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->isBreakModeActive(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "invalid position"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private handleWLBMode(IZ)V
    .locals 2

    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    if-eqz p2, :cond_2

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->sendBroadcastToApplication(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ge v0, p2, :cond_2

    .line 218
    const-class p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->launchConfiguration(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private launchConfiguration(I)V
    .locals 2

    .line 159
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.ACTION_MODE_CONFIGURE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oneplus.opwlb"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_setup_mode"

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_mode"

    .line 162
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private sendBreakModeBroadcast()V
    .locals 3

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_WLB_BREAK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "received_from"

    const-string v2, "quickSettings"

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastToApplication(I)V
    .locals 2

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.WLB_MANUAL_SELECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_mode"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    move-result-object p2

    if-eq p2, p1, :cond_0

    .line 117
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getPicture()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getTriggerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->updateThemeColor(Z)V

    .line 121
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object p1

    .line 109
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->updateActiveMode(IZ)V

    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    const-class p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 136
    fill-array-data p1, :array_0

    .line 137
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 139
    aput-boolean v1, p1, v0

    :cond_1
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object v1

    .line 144
    aget-boolean v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    return-void
.end method

.method public updateActiveMode(IZ)V
    .locals 4

    .line 175
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "C22AG9UUDL"

    const-string v1, "1"

    const-string v2, "qt_mode_change_menu"

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v3, "qt_menu_change_Life"

    .line 186
    invoke-static {v2, v3, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->handleWLBMode(IZ)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "qt_menu_change_work"

    .line 180
    invoke-static {v2, v3, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->handleWLBMode(IZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->sendBreakModeBroadcast()V

    const-string p2, "qt_menu_change_none"

    .line 193
    invoke-static {v2, p2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    :goto_0
    return-void
.end method

.method public updateExpansion(F)V
    .locals 2

    float-to-double p0, p1

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public updateUI(I)V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Z

    .line 231
    fill-array-data v1, :array_0

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p1, v2, :cond_0

    .line 235
    aput-boolean v3, v1, p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    .line 239
    sget v4, Lcom/android/systemui/R$id;->user_picture:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 240
    aget-boolean v4, v1, p1

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_enabled:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_accent_active_dark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 244
    :cond_1
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 259
    sget v4, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_light:I

    .line 260
    sget v5, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_light:I

    goto :goto_1

    .line 255
    :cond_2
    sget v4, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_dark:I

    .line 256
    sget v5, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_dark:I

    goto :goto_1

    .line 250
    :cond_3
    sget v4, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_light:I

    .line 251
    sget v5, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_light:I

    .line 263
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "updateUI: exception caught"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
