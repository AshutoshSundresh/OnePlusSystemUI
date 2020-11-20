.class public Lcom/oneplus/aod/OpAodMain;
.super Landroid/widget/RelativeLayout;
.source "OpAodMain.java"

# interfaces
.implements Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;


# static fields
.field private static final AOD_ALPHA_VALUE:F


# instance fields
.field private mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

.field private mClockContainer:Landroid/widget/FrameLayout;

.field private mController:Lcom/oneplus/aod/controller/IOpClockController;

.field private mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mSliceInfoContainer:Landroid/widget/LinearLayout;

.field private mSystemInfoContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_alpha_value"

    const/16 v1, 0x2bc

    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sput v0, Lcom/oneplus/aod/OpAodMain;->AOD_ALPHA_VALUE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private updateClockStyle()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "OpAodMain"

    const-string v2, "controller is null. set all to gone!"

    .line 179
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowDate()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowBattery()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->hasNotifications()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 201
    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowNotification()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :goto_3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {p0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowSliceInfo()Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateRTL()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    .line 223
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    .line 224
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 78
    sget v0, Lcom/android/systemui/R$id;->battery_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodBatteryStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    .line 79
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    .line 80
    sget v0, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    .line 81
    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/views/OpTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/android/systemui/R$id;->op_aod_system_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/android/systemui/R$id;->op_aod_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    .line 86
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    .line 91
    sget v0, Lcom/oneplus/aod/OpAodMain;->AOD_ALPHA_VALUE:F

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    .line 97
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    return-void
.end method

.method public updateDisplayTextDB()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 238
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_display_text"

    .line 237
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock: updateDisplayTextDB = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpAodMain"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateLayout()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySystemInfoViewMargin(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoTextSettings(Lcom/oneplus/aod/views/OpTextDate;)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    .line 140
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 142
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySliceInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 146
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoTextSettings(Lcom/oneplus/aod/OpAodBatteryStatusView;)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoTextSettings(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoTextSettings(Landroid/widget/TextView;)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 172
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected updateRTL(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 109
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 110
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 111
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 112
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 115
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 116
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 117
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 118
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 121
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
