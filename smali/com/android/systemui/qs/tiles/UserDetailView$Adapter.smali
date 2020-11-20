.class public Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mCurrentUserView:Landroid/view/View;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 92
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 164
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_0

    .line 165
    sget v0, Lcom/android/systemui/R$drawable;->ic_add_circle_qs:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v1

    const/4 v2, 0x0

    .line 166
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_1

    .line 171
    sget p1, Lcom/android/systemui/R$color;->qs_user_switcher_selected_avatar_icon_color:I

    goto :goto_1

    .line 172
    :cond_1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-nez p1, :cond_2

    .line 173
    sget p1, Lcom/android/systemui/R$color;->GM2_grey_600:I

    goto :goto_1

    .line 175
    :cond_2
    sget p1, Lcom/android/systemui/R$color;->qs_user_switcher_avatar_icon_color:I

    .line 177
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0
.end method


# virtual methods
.method public createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object p1

    .line 108
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object p2

    .line 115
    iget-object v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v2

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_framed_avatar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 119
    new-instance v3, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v4, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 121
    iget-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getDisabledUserAvatarColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 120
    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 122
    iget-object v0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2, v3, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 125
    :goto_3
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateThemeColor(Z)V

    .line 127
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setActivated(Z)V

    .line 128
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 129
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 130
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const p2, 0x3ec28f5c    # 0.38f

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 132
    iget-boolean p2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz p2, :cond_5

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Landroid/view/View;

    .line 137
    :cond_5
    iput-boolean v1, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    .line 139
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-nez p0, :cond_6

    .line 140
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    goto :goto_5

    .line 143
    :cond_6
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez p0, :cond_7

    iget-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p0, :cond_8

    iget-object p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez p0, :cond_8

    .line 144
    :cond_7
    invoke-static {}, Lcom/android/systemui/qs/tiles/UserDetailView;->getAvailableInternalMemorySize()J

    move-result-wide v2

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Available storage size="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UserDetailView"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v4, -0x44800000

    cmp-long p0, v2, v4

    if-gez p0, :cond_8

    const-string p0, "Storage size is too small, disable add user function"

    .line 147
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 149
    iput-boolean v1, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    const/4 p0, 0x1

    .line 150
    iput-boolean p0, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    .line 154
    :cond_8
    :goto_5
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 194
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 198
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x9c

    invoke-static {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 201
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-nez v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    const/4 v1, 0x1

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 208
    :cond_2
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    const-string v1, "1"

    const-string v2, "quick_user"

    if-eqz p1, :cond_3

    const-string p1, "guest"

    .line 209
    invoke-static {v2, p1, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_3
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez p1, :cond_4

    const-string/jumbo p1, "switch"

    .line 211
    invoke-static {v2, p1, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    goto :goto_1

    .line 217
    :cond_5
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    if-eqz p1, :cond_6

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_switch_user_storage_insufficient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return-void
.end method
