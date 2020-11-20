.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Lcom/oneplus/volume/OpVolumeDialogImpl;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveStream:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAnimVol:Landroid/animation/ValueAnimator;

.field private mAutomute:Z

.field private mConfigChanged:Z

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHasSeenODICaptionsTooltip:Z

.field private mHovering:Z

.field private mIsAnimatingDismiss:Z

.field private mIsCaptionComponentEnabled:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mNeedPlayExpandAnim:Z

.field private mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field private mODICaptionsTooltipView:Landroid/view/View;

.field private mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field private mODIDebug:Z

.field private mPrevActiveStream:I

.field private mRinger:Landroid/view/ViewGroup;

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mSettingsBackIcon:Landroid/widget/ImageButton;

.field private mSettingsBackView:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsOpSettingsView:Landroid/view/View;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowActiveStreamOnly:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mTargetBottomSettingsBackIconVisible:I

.field private mTargetBottomSettingsIconVisible:I

.field private mTargetBottomSettingsOpSettingsIconVisible:I

.field private mWindow:Landroid/view/Window;

.field private mZenIcon:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 230
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;-><init>()V

    .line 163
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 184
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 206
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 216
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    const/16 v1, 0x8

    .line 217
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    .line 218
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    .line 219
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 2168
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 231
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 233
    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 234
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 235
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 236
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 237
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showActiveStreamOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    const-string/jumbo v1, "systemui.odi.debug"

    .line 245
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODIDebug:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HasSeenODICaptionsTooltip"

    .line 246
    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 250
    new-instance p1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    .line 261
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    .line 262
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vol Controller, mOpBeforeExpandWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpafterExpandWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    new-instance p1, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    invoke-direct {p1, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->showOutputChooserH()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserGravityNeedBeforeAnimStart(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 142
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateDialogLayout()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setExpandFeautureDismissState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return p0
.end method

.method static synthetic access$4600(Landroid/widget/SeekBar;I)I
    .locals 0

    .line 142
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p1
.end method

.method private addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1690
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    goto :goto_0

    .line 1686
    :cond_0
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    goto :goto_0

    .line 1683
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    .line 1693
    :goto_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1694
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private addExistingRows()V
    .locals 10

    .line 563
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 565
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 566
    iget v5, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v6, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    iget v7, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    iget-boolean v8, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    iget-boolean v9, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 568
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 569
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 550
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 8

    .line 555
    sget-boolean p6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding row for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    new-instance p6, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-direct {p6}, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;-><init>()V

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 557
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 558
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object p2, p6, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkODICaptionsTooltip(Z)V
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 924
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    goto :goto_0

    .line 926
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeTimeoutH()I
    .locals 4

    .line 1210
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1211
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/4 v2, 0x6

    const/16 v3, 0x1388

    if-eqz v0, :cond_1

    .line 1215
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1220
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1221
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1227
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isStatusBarShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p0, 0x5dc

    return p0

    .line 1230
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method private enableRingerViewsH(Z)V
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1720
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1722
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1723
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private findRow(I)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 2

    .line 588
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 589
    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 575
    iget v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 580
    iget v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    .line 584
    :cond_3
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method private getAlphaAttr(I)I
    .locals 2

    .line 521
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 522
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 523
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 2

    .line 607
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    .line 608
    div-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 1

    .line 2152
    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$LT0IPBZdP1jDIMwVCAclfWfxQwU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$LT0IPBZdP1jDIMwVCAclfWfxQwU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 0

    .line 2161
    new-instance p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$J07ySb9s3Y3zCMbX45St4b7bh8A;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$J07ySb9s3Y3zCMbX45St4b7bh8A;-><init>(Landroid/widget/ImageButton;)V

    return-object p0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 2140
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 2144
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2146
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find translation for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hideCaptionsTooltip()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 993
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 995
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 996
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 997
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 998
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$c8tgC19HinFoEv5JhfgLli1ykrw;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$c8tgC19HinFoEv5JhfgLli1ykrw;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 999
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1008
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private hideCaptionsTooltipImmediately()V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1022
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private incrementManualToggleCount()V
    .locals 2

    .line 1074
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_ringer_toggle_count"

    const/4 v1, 0x0

    .line 1075
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1076
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initDialog()V
    .locals 15

    .line 292
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 294
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 297
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    .line 298
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 299
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10002

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0028

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v3, 0x7e4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x1030004

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x3

    .line 310
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 311
    const-class v3, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 315
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 319
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$layout;->op_volume_dialog:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_upper:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogUpper:Landroid/view/ViewGroup;

    .line 333
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_lower:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    .line 335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BZhTIdOE2rPYfFa5HbcUDCtXeM;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BZhTIdOE2rPYfFa5HbcUDCtXeM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$T52d0W13mYvykk6ORgbytqfZsps;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$T52d0W13mYvykk6ORgbytqfZsps;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_row_container:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    .line 389
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_rows:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 390
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->ringer:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 392
    sget v3, Lcom/android/systemui/R$id;->ringer_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 393
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->odi_captions:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 398
    sget v3, Lcom/android/systemui/R$id;->odi_captions_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->odi_captions_tooltip_stub:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 401
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 402
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 403
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 408
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 409
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDialog, mODICaptionsView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsCaptionComponentEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_chooser:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    .line 421
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->volume_row_connected_device:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_back_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_back:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_opsettings_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_opsettings:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_name_marquee:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    .line 435
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 436
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->output_chooser_background_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    .line 458
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v4, 0xa

    .line 463
    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_accessibility:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_6
    const/4 v10, 0x3

    .line 466
    sget v11, Lcom/android/systemui/R$drawable;->ic_volume_media:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_media_mute:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 468
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x2

    .line 469
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x4

    .line 471
    sget v11, Lcom/android/systemui/R$drawable;->ic_alarm:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_alarm_mute:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 474
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    .line 475
    sget v6, Lcom/android/systemui/R$drawable;->ic_local_phone_24_lib:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    const v11, 0x1080506

    const v12, 0x1080506

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, p0

    .line 479
    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :goto_1
    const/4 v4, 0x6

    .line 484
    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_bt_sco:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x1

    .line 486
    sget v11, Lcom/android/systemui/R$drawable;->ic_volume_system:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_system_mute:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_2

    .line 490
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    .line 493
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRingerH()V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initODICaptionsH()V

    const/16 v0, 0x64

    .line 500
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 504
    invoke-virtual {p0, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    .line 506
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateDialogLayout()V

    .line 509
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 510
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    :cond_a
    return-void

    :catch_0
    move-exception v0

    .line 325
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentView Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    return-void
.end method

.method private initODICaptionsH()V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_0

    .line 913
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$9fzv42wROG9GvTVjJNs8RbTVwQs;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$9fzv42wROG9GvTVjJNs8RbTVwQs;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOnConfirmedTapListener(Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;Landroid/os/Handler;)V

    .line 919
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    return-void
.end method

.method private initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 617
    iput p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    .line 618
    iput p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    .line 619
    iput p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 620
    iput-boolean p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    .line 621
    iput-boolean p6, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    .line 626
    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$layout;->op_volume_dialog_row:I

    const/4 p6, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    iput-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 629
    iget p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    .line 630
    iget-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 631
    iget-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget p5, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 632
    iget p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    mul-int/lit8 p5, p5, 0x14

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p4, 0xa

    if-ne p2, p4, :cond_0

    .line 634
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 636
    :cond_0
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    .line 637
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/SeekBar;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 638
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v0, p0, p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {p5, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 640
    iput-object p6, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 642
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget p6, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageButton;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 643
    invoke-virtual {p5, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 644
    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq p3, p4, :cond_1

    .line 645
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    new-instance p4, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$faxejaGfFb01-SDF9TessAqe10c;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$faxejaGfFb01-SDF9TessAqe10c;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 689
    :cond_1
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 528
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z
    .locals 0

    .line 1951
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz p0, :cond_1

    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$dismissH$17()V
    .locals 2

    .line 1263
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismissH withEndAction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setExpandFeautureDismissState()V

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->tryToRemoveCaptionsTooltip()V

    .line 1272
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    return-void
.end method

.method private synthetic lambda$dismissH$18()V
    .locals 4

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$IE-RbQpvR2pa3pWKthxPITNgmkU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$IE-RbQpvR2pa3pWKthxPITNgmkU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$getSinglePressFor$25(Landroid/widget/ImageButton;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2154
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getSingleUnpressFor$26(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2163
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCaptionsTooltip$15()V
    .locals 1

    .line 1000
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1002
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initDialog$0()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    .line 359
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initDialog$1(Landroid/content/DialogInterface;)V
    .locals 2

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 351
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vBH_Cy2LsLvfluWDg0W4IzJ1dm8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vBH_Cy2LsLvfluWDg0W4IzJ1dm8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$initDialog$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 369
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return p2
.end method

.method private synthetic lambda$initODICaptionsH$12()V
    .locals 1

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->onCaptionIconClicked()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0x15

    .line 915
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initRingerH$11(Landroid/view/View;)V
    .locals 5

    .line 877
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "TouchedRingerToggle"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 878
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez p1, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v2

    .line 886
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    .line 896
    :cond_3
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p1, :cond_4

    .line 897
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_4
    :goto_0
    const/16 p1, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    .line 900
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 901
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->incrementManualToggleCount()V

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 903
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->provideTouchFeedbackH(I)V

    .line 904
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 905
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->maybeShowToastH(I)V

    return-void
.end method

.method private synthetic lambda$initRow$3(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 5

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/Object;

    .line 646
    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 648
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRow setOnClickListener row.stream:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.iconState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.ss.level:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.ss.levelMin:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.lastAudibleLevel:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 656
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v0, p3, :cond_2

    .line 675
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne p3, v3, :cond_1

    .line 676
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_1

    .line 678
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_1

    .line 682
    :cond_2
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v0, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v0, p3, :cond_3

    move v2, v3

    .line 683
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_4

    .line 684
    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    goto :goto_0

    :cond_4
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 683
    :goto_0
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :goto_1
    const-wide/16 p2, 0x0

    .line 686
    iput-wide p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-void
.end method

.method private synthetic lambda$initSettingsH$10(Landroid/view/View;)V
    .locals 1

    .line 860
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 861
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsOpSettingsIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 864
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 866
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$4(I)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$5(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x8

    .line 743
    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 745
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 746
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz p1, :cond_3

    :cond_2
    return-void

    .line 756
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltipImmediately()V

    .line 758
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    const/4 p1, 0x1

    .line 759
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    .line 760
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 762
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    .line 764
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$6(I)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$7(Landroid/view/View;)V
    .locals 1

    .line 813
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 814
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsBackIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 817
    :cond_3
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    const/4 p1, 0x0

    .line 818
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const/4 p1, 0x1

    .line 819
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 820
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$8(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 844
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSettingsH$9(I)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$13(Landroid/view/View;)V
    .locals 0

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 p1, 0x16

    .line 937
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$14()V
    .locals 3

    .line 968
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tool:checkODICaptionsTooltip() putBoolean true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODIDebug:Z

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenODICaptionsTooltip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 973
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_2

    .line 978
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateCaptionsIcon$16(Z)V
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOptedOut(Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$19()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$20()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$21()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$22(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1450
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1451
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$23(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1465
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1466
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$24(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1481
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1482
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private maybeShowToastH(I)V
    .locals 11

    .line 1098
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "RingerGuidanceCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    .line 1119
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040819

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1106
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz p1, :cond_3

    .line 1108
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_dialog_ringer_guidance_ring:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    int-to-long v7, v7

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-long v9, p1

    .line 1110
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 1108
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1114
    :cond_2
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040818

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1123
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/2addr v0, v4

    .line 1125
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private onCaptionIconClicked()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1069
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 1070
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    return-void
.end method

.method private opExpandAnim(Z)V
    .locals 11

    .line 1560
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1561
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init mAnimVol init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1564
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    .line 1565
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1566
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p1, :cond_1

    .line 1570
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    .line 1571
    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    goto :goto_0

    .line 1573
    :cond_1
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    .line 1574
    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    :goto_0
    move v8, p1

    move p1, v1

    .line 1577
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x113

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1578
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1579
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move v4, v8

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;I)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1615
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    move-object v1, v10

    move v3, p1

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;IILandroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private provideTouchFeedbackH(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1090
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_0

    .line 1083
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1086
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    return-void
.end method

.method private recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    .line 2087
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "recheckH ALL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 2089
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 2090
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 2093
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 2

    .line 2099
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 2100
    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, p1, :cond_0

    .line 2102
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setStreamImportantH stream:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " important:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iput-boolean p2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)Z
    .locals 5

    .line 1294
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    .line 1300
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    if-nez v0, :cond_5

    .line 1301
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1302
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0

    .line 1307
    :cond_2
    iget v4, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v4, v1, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v0, v4, :cond_3

    return v3

    .line 1312
    :cond_3
    iget-boolean p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    if-eqz p1, :cond_5

    .line 1313
    iget p1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 1317
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method private showActiveStreamOnly()Z
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1290
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showH(I)V
    .locals 5

    .line 1140
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1147
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1148
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1151
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1155
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    .line 1157
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    move v0, v1

    .line 1160
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    if-nez v0, :cond_4

    .line 1165
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 1171
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 1172
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 1175
    invoke-virtual {p0, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    .line 1178
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-array v0, v2, [Ljava/lang/Object;

    .line 1180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1181
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1182
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 1183
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1186
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    if-nez p1, :cond_5

    .line 1187
    new-instance p1, Lcom/oneplus/volume/OpOutputChooser;

    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/volume/OpOutputChooser;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    .line 1188
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    invoke-virtual {p1, v0}, Lcom/oneplus/volume/OpOutputChooser;->addCallback(Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;)V

    .line 1190
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1191
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    goto :goto_1

    :cond_6
    const/4 p1, -0x2

    .line 1193
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1196
    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3

    .line 2112
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSafetyWarningH flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    .line 2114
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    .line 2116
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2117
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 2118
    monitor-exit p1

    return-void

    .line 2120
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 2129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2130
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 2131
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 2133
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception p0

    .line 2130
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private trimObsoleteH()V
    .locals 4

    .line 1728
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1730
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1731
    iget-object v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 1732
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    iget v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1733
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1734
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1735
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->remove(Landroid/widget/TextView;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateCaptionsIcon()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getCaptionsEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v2, v0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setCaptionsEnabled(Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isCaptionStreamOptedOut()Z

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getOptedOut()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$DIKiMyXI1bMyTRDvEPHkZewFa_o;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$DIKiMyXI1bMyTRDvEPHkZewFa_o;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateODICaptionsH(ZZ)V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    return-void

    .line 1051
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    if-eqz p2, :cond_4

    .line 1052
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCaptionsTooltip()V

    :cond_4
    return-void
.end method

.method private updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1325
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRowsH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v2, :cond_1

    .line 1327
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1341
    :cond_1
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 1342
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRowsH, mOpForceExpandState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOpLastforceExpandState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedPlayExpandAnim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mFirstTimeInitDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", activeRow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_2
    iget-object v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    const/16 v4, 0x438

    invoke-static {v2, v3, v4}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v2

    .line 1351
    iget-boolean v3, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const-wide/16 v6, 0x1e

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ecccccd    # 0.4f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_e

    .line 1352
    iget-object v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1353
    iget v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v11, v8, :cond_3

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_3

    if-nez v11, :cond_a

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1354
    :cond_3
    iget-boolean v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    if-nez v11, :cond_9

    .line 1355
    iget v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const-wide/16 v4, 0x113

    if-ne v11, v8, :cond_5

    .line 1356
    iget-object v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v11, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1357
    iget-object v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v11, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1359
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1360
    iget-object v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v8, v2

    div-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual {v11, v8}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 1362
    :cond_4
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v9

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1365
    :goto_1
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1366
    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1367
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1368
    invoke-virtual {v8, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1369
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$rNQvPZ4v1mumin0xPzfWijGPmaI;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$rNQvPZ4v1mumin0xPzfWijGPmaI;

    .line 1370
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1372
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    :cond_5
    if-ne v11, v10, :cond_7

    .line 1375
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1376
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v8, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1378
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1379
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v10

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 1381
    :cond_6
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v9

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1384
    :goto_2
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1385
    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1386
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1387
    invoke-virtual {v8, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1388
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$m26Kv58I4TUt4m4TU2mNQQsVCVc;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$m26Kv58I4TUt4m4TU2mNQQsVCVc;

    .line 1389
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x3c

    .line 1391
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    :cond_7
    if-nez v11, :cond_8

    .line 1394
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1395
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1396
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v6, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1397
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v7, v2

    div-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 1398
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1399
    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1400
    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1401
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1402
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$CGNjjawdA5MPOVXXrPSL0CwlAlM;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$CGNjjawdA5MPOVXXrPSL0CwlAlM;

    .line 1403
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x5a

    .line 1405
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 1410
    :cond_8
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v4, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_3

    .line 1413
    :cond_9
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v4, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1416
    :goto_3
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1417
    invoke-direct {v0, v3, v14, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    :cond_a
    const-wide/16 v6, 0x1e

    const/4 v8, 0x2

    goto/16 :goto_0

    .line 1422
    :cond_b
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v1, :cond_d

    .line 1423
    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->opExpandAnim(Z)V

    .line 1424
    iget-boolean v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz v1, :cond_d

    .line 1425
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_c

    .line 1426
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnimVol.start, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_c
    invoke-virtual {v0, v14}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserGravityNeedBeforeAnimStart(Z)V

    .line 1429
    invoke-virtual {v0, v14}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(Z)V

    .line 1430
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    const/4 v1, 0x0

    .line 1435
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    goto/16 :goto_b

    :cond_e
    if-nez v3, :cond_1c

    .line 1438
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v3, :cond_15

    .line 1439
    iget-object v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1440
    iget v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const-wide/16 v5, 0xaf

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    .line 1441
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1442
    invoke-virtual {v4, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    neg-int v8, v2

    div-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    .line 1443
    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1444
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1445
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$MpNJ24ayoduzmAFeDFV4eMtPu04;

    invoke-direct {v5, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$MpNJ24ayoduzmAFeDFV4eMtPu04;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1446
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v8, 0x3c

    .line 1453
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_f
    const-wide/16 v4, 0x1e

    goto :goto_4

    :cond_10
    const-wide/16 v8, 0x3c

    if-ne v4, v10, :cond_11

    .line 1456
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1457
    invoke-virtual {v4, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    .line 1458
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1459
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1460
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$uTzBYZgj9yTHnMEMjuHMHE4EwAI;

    invoke-direct {v5, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$uTzBYZgj9yTHnMEMjuHMHE4EwAI;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1461
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1e

    .line 1468
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_11
    if-nez v4, :cond_f

    .line 1471
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1472
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1473
    invoke-virtual {v4, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    .line 1474
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1475
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1476
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;

    invoke-direct {v5, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1477
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1e

    .line 1484
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 1488
    :cond_12
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 1489
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->opExpandAnim(Z)V

    .line 1490
    iget-boolean v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz v2, :cond_14

    .line 1491
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_13
    const/4 v1, 0x0

    .line 1494
    :cond_14
    :goto_5
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    goto/16 :goto_b

    .line 1497
    :cond_15
    iget-object v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    if-nez v1, :cond_18

    .line 1502
    iget v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v4, v9, :cond_17

    move v4, v14

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    :goto_7
    move v5, v4

    goto :goto_9

    :cond_18
    if-ne v3, v1, :cond_19

    move v4, v14

    goto :goto_8

    :cond_19
    const/4 v4, 0x0

    .line 1506
    :goto_8
    invoke-direct {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 1509
    :goto_9
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v6, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1512
    iget v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v4, v9, :cond_1b

    if-eqz v5, :cond_1b

    .line 1513
    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1514
    iget v6, v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v6, v9, :cond_1a

    .line 1515
    iget-object v5, v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_a

    :cond_1a
    const/4 v6, 0x0

    goto :goto_a

    :cond_1b
    const/4 v6, 0x0

    .line 1521
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1523
    invoke-direct {v0, v3, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V

    goto :goto_6

    .line 1552
    :cond_1c
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    return-void
.end method

.method private updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1787
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    const-string/jumbo v3, "updateVolumeRowH s="

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    .line 1789
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    .line 1791
    :cond_2
    iput-object v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1799
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lez v4, :cond_3

    iget v7, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v7, v5, :cond_3

    .line 1800
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    goto :goto_0

    .line 1801
    :cond_3
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-le v4, v6, :cond_4

    iget v7, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v7, v5, :cond_4

    .line 1802
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 1803
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowH, lastAudibleLevel = ss.level:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_4
    :goto_0
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v7, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    if-ne v4, v7, :cond_5

    const/4 v4, -0x1

    .line 1808
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 1810
    :cond_5
    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/16 v7, 0xa

    if-ne v4, v7, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 1811
    :goto_1
    iget v7, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v7, v5, :cond_7

    move v7, v6

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 1812
    :goto_2
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v9, v6, :cond_8

    move v9, v6

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 1813
    :goto_3
    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    move v10, v6

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    .line 1814
    :goto_4
    iget v11, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a

    move v11, v6

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 1816
    :goto_5
    iget v13, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eqz v7, :cond_b

    .line 1818
    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v13, v6, :cond_b

    move v13, v6

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    if-eqz v7, :cond_c

    .line 1820
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v14, :cond_c

    move v14, v6

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    .line 1822
    :goto_7
    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v15, v6, :cond_d

    move v15, v6

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    .line 1823
    :goto_8
    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v8, v12, :cond_e

    move v8, v6

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    .line 1824
    :goto_9
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v12, v5, :cond_f

    move v12, v6

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :goto_a
    if-eqz v8, :cond_11

    if-nez v7, :cond_10

    if-eqz v9, :cond_16

    :cond_10
    :goto_b
    move v8, v6

    goto :goto_c

    :cond_11
    if-eqz v12, :cond_12

    if-nez v7, :cond_10

    if-nez v9, :cond_10

    if-nez v10, :cond_10

    if-eqz v11, :cond_16

    goto :goto_b

    :cond_12
    if-eqz v15, :cond_16

    if-eqz v10, :cond_13

    .line 1827
    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v8, :cond_10

    :cond_13
    if-eqz v11, :cond_14

    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v8, :cond_10

    :cond_14
    if-eqz v7, :cond_15

    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v8, :cond_10

    :cond_15
    if-eqz v9, :cond_16

    iget-object v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v8, :cond_16

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    .line 1834
    :goto_c
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v9, v9, 0x64

    .line 1835
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-eq v9, v10, :cond_17

    .line 1836
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1839
    :cond_17
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v9, v9, 0x64

    .line 1844
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMin()I

    move-result v10

    if-eq v9, v10, :cond_18

    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eqz v10, :cond_18

    .line 1845
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1850
    :cond_18
    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_19

    sget-object v9, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " min:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ss.muted:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_19
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/settingslib/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1855
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1856
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget v10, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 1859
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v3, :cond_1a

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v3, :cond_1b

    :cond_1a
    if-nez v8, :cond_1b

    move v3, v6

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    .line 1860
    :goto_d
    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1861
    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1c

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_1c
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_e
    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz v13, :cond_1d

    .line 1863
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    goto :goto_10

    :cond_1d
    if-nez v14, :cond_22

    if-eqz v8, :cond_1e

    goto :goto_f

    .line 1865
    :cond_1e
    iget-boolean v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v9, :cond_20

    .line 1866
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v9

    if-eqz v9, :cond_1f

    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    goto :goto_10

    .line 1867
    :cond_1f
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    goto :goto_10

    .line 1868
    :cond_20
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    goto :goto_10

    :cond_21
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    goto :goto_10

    .line 1864
    :cond_22
    :goto_f
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 1869
    :goto_10
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v10, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1871
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    if-ne v9, v10, :cond_23

    const/4 v5, 0x3

    goto :goto_12

    .line 1872
    :cond_23
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    if-eq v9, v10, :cond_27

    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    if-ne v9, v10, :cond_24

    goto :goto_12

    .line 1874
    :cond_24
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    if-eq v9, v5, :cond_26

    iget v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    if-ne v9, v5, :cond_25

    goto :goto_11

    :cond_25
    const/4 v5, 0x0

    goto :goto_12

    :cond_26
    :goto_11
    move v5, v6

    .line 1876
    :cond_27
    :goto_12
    iput v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    if-eqz v3, :cond_31

    if-eqz v7, :cond_2c

    if-eqz v13, :cond_28

    .line 1880
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1882
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 1880
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1884
    :cond_28
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1885
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1886
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_29

    .line 1887
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate_a11y:I

    goto :goto_13

    .line 1888
    :cond_29
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate:I

    :goto_13
    new-array v6, v6, [Ljava/lang/Object;

    .line 1889
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 1885
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1891
    :cond_2a
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1892
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_2b

    .line 1893
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_14

    .line 1894
    :cond_2b
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_14
    new-array v6, v6, [Ljava/lang/Object;

    .line 1895
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 1891
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_2c
    if-eqz v4, :cond_2d

    .line 1899
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_15
    const/4 v9, 0x0

    goto :goto_18

    .line 1901
    :cond_2d
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v3, :cond_30

    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_2e

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_2e

    goto :goto_17

    .line 1906
    :cond_2e
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1907
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_2f

    .line 1908
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_16

    .line 1909
    :cond_2f
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_16
    new-array v6, v6, [Ljava/lang/Object;

    .line 1910
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 1906
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_30
    :goto_17
    const/4 v9, 0x0

    .line 1902
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1904
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    .line 1902
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_31
    const/4 v9, 0x0

    .line 1914
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_18
    if-eqz v8, :cond_32

    .line 1919
    iput-boolean v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    :cond_32
    xor-int/lit8 v2, v8, 0x1

    .line 1937
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_33

    if-nez v7, :cond_33

    if-nez v8, :cond_33

    move v3, v9

    goto :goto_19

    .line 1938
    :cond_33
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    :goto_19
    if-eqz v7, :cond_35

    if-nez v13, :cond_34

    if-eqz v14, :cond_35

    :cond_34
    move v3, v9

    move v8, v3

    goto :goto_1a

    :cond_35
    move v8, v2

    .line 1947
    :goto_1a
    invoke-direct {v0, v1, v8, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZI)V
    .locals 11

    .line 2004
    iget-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 2009
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V

    .line 2011
    iget-boolean v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    const-string/jumbo v2, "updateVolumeRowSliderH s="

    if-eqz v1, :cond_1

    .line 2013
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    .line 2014
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is tracking"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 2019
    :cond_1
    iget-object v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 2020
    iget-object v3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v3

    .line 2021
    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2022
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v5

    .line 2024
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v10, 0x3

    invoke-virtual {v7, v10, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2025
    iget-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v7, :cond_6

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .line 2026
    sget-boolean p2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string p3, "inGracePeriod"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_4
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_5

    .line 2029
    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inGracePeriod"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {p0, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-wide v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    add-long/2addr v0, v8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_6
    if-ne p3, v3, :cond_8

    .line 2037
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 2039
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_7

    .line 2040
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vlevel: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    mul-int/lit8 p3, p3, 0x64

    .line 2048
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_9

    .line 2049
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " progress: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newProgress: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eq v1, p3, :cond_f

    .line 2053
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p0, :cond_d

    if-eqz v4, :cond_d

    .line 2055
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_b

    iget p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    if-ne p0, p3, :cond_b

    .line 2058
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_a

    .line 2059
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateVolumeRowSliderH already animating to the target progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 2065
    :cond_b
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x2

    if-nez p0, :cond_c

    .line 2066
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-array p2, p2, [I

    aput v1, p2, v5

    aput p3, p2, v0

    const-string v0, "progress"

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 2067
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 2069
    :cond_c
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2070
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    new-array p2, p2, [I

    aput v1, p2, v5

    aput p3, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 2072
    :goto_2
    iput p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    .line 2073
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x50

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2074
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 2077
    :cond_d
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_e

    .line 2078
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2080
    :cond_e
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0, p3, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_f
    :goto_3
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1956
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1963
    iget-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 1973
    :cond_0
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 1976
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    goto :goto_0

    :cond_1
    const p2, 0x1010553

    .line 1977
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    .line 1982
    :goto_0
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    if-ne v0, p2, :cond_2

    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->themeColorMode:I

    if-ne p2, v1, :cond_2

    if-nez p3, :cond_2

    return-void

    .line 1985
    :cond_2
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1986
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1995
    iput-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    .line 1997
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1998
    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    iput p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->themeColorMode:I

    .line 1999
    iget-object p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 1783
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v3

    iget-object v3, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 4

    .line 1235
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1236
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialog.dismiss() reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    if-eqz v0, :cond_2

    return-void

    .line 1244
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1246
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1247
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 1249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1251
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1252
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1253
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1254
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1257
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_0
    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 1258
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1260
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$a7-wxVi216tvuQimiidzElZQq3M;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$a7-wxVi216tvuQimiidzElZQq3M;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1261
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1277
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1278
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1280
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_6

    .line 1282
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "SafetyWarning dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1285
    :cond_6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 276
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 281
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public initRingerH()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 875
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 876
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$wxx-1NamOLWvH0efv0Fvn1ZXt8A;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$wxx-1NamOLWvH0efv0Fvn1ZXt8A;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public initSettingsH()V
    .locals 14

    .line 694
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "initSettingsH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x113

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x8

    if-eqz v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 705
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 706
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v10

    .line 711
    :goto_0
    sget-boolean v11, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initSettingsH, targetBottomSettingsIconVisible: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mTargetBottomSettingsIconVisible:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2
    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    if-eq v11, v0, :cond_7

    .line 714
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    if-nez v0, :cond_3

    .line 718
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 721
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_4

    move v12, v8

    goto :goto_1

    :cond_4
    move v12, v9

    .line 722
    :goto_1
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_5

    move v12, v7

    goto :goto_2

    :cond_5
    move v12, v9

    .line 723
    :goto_2
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_6

    move v12, v7

    goto :goto_3

    :cond_6
    move v12, v9

    .line 724
    :goto_3
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 725
    invoke-virtual {v11, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v6, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 726
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$tYqu_SzICRK6KaTw5NCx1axBwhY;

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$tYqu_SzICRK6KaTw5NCx1axBwhY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 727
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 732
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 736
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    if-ne v0, v10, :cond_8

    move v0, v8

    goto :goto_4

    :cond_8
    move v0, v9

    :goto_4
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 741
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    .line 742
    new-instance v11, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yhKa93yBvDMghPsrninv77nitIM;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yhKa93yBvDMghPsrninv77nitIM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 773
    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v0, :cond_b

    move v0, v5

    goto :goto_6

    :cond_b
    move v0, v10

    .line 779
    :goto_6
    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    if-eq v11, v0, :cond_10

    .line 780
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    if-nez v0, :cond_c

    .line 784
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 787
    :cond_c
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_d

    move v12, v8

    goto :goto_7

    :cond_d
    move v12, v9

    .line 788
    :goto_7
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_e

    move v12, v7

    goto :goto_8

    :cond_e
    move v12, v9

    .line 789
    :goto_8
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v10, :cond_f

    move v12, v7

    goto :goto_9

    :cond_f
    move v12, v9

    .line 790
    :goto_9
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 791
    invoke-virtual {v11, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v6, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 792
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$s2Cuv-jqDV5qd2d-dbjuR_YugHQ;

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$s2Cuv-jqDV5qd2d-dbjuR_YugHQ;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 793
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 797
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_b

    .line 800
    :cond_10
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    if-ne v0, v10, :cond_11

    move v0, v8

    goto :goto_a

    :cond_11
    move v0, v9

    :goto_a
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 804
    :cond_12
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 806
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 807
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_c

    .line 809
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 812
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    new-instance v11, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$_tPh_IeO5Q_gkFTTSsZazreKzHw;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$_tPh_IeO5Q_gkFTTSsZazreKzHw;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 828
    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v0, :cond_15

    goto :goto_d

    :cond_15
    move v5, v10

    .line 834
    :goto_d
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    if-eq v0, v5, :cond_1b

    .line 835
    iput v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    .line 836
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v5, v10, :cond_16

    move v11, v8

    goto :goto_e

    :cond_16
    move v11, v9

    .line 837
    :goto_e
    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v5, v10, :cond_17

    move v11, v7

    goto :goto_f

    :cond_17
    move v11, v9

    .line 838
    :goto_f
    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v5, v10, :cond_18

    goto :goto_10

    :cond_18
    move v7, v9

    .line 839
    :goto_10
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 840
    iget-boolean v7, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v7, :cond_19

    goto :goto_11

    :cond_19
    const-wide/16 v3, 0x78

    :goto_11
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v6, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 841
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3q1KL3g4O5A3gVZ4JD2dByVrkNI;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3q1KL3g4O5A3gVZ4JD2dByVrkNI;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 842
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3i1zvcqG_4mrqN_GeZ7K60UeisA;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3i1zvcqG_4mrqN_GeZ7K60UeisA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 847
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 851
    iget-boolean v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v3, :cond_1a

    const-wide/16 v1, 0x5b

    :cond_1a
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_13

    .line 854
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    if-ne v5, v10, :cond_1c

    goto :goto_12

    :cond_1c
    move v8, v9

    :goto_12
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 858
    :cond_1d
    :goto_13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    .line 859
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vFGDLS9dLMW9Hn6QccZRosNtBGU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vFGDLS9dLMW9Hn6QccZRosNtBGU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    return-void
.end method

.method public synthetic lambda$dismissH$17$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$17()V

    return-void
.end method

.method public synthetic lambda$dismissH$18$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$18()V

    return-void
.end method

.method public synthetic lambda$getSinglePressFor$25$VolumeDialogImpl(Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$getSinglePressFor$25(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public synthetic lambda$hideCaptionsTooltip$15$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$hideCaptionsTooltip$15()V

    return-void
.end method

.method public synthetic lambda$initDialog$0$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$0()V

    return-void
.end method

.method public synthetic lambda$initDialog$1$VolumeDialogImpl(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$initDialog$2$VolumeDialogImpl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initODICaptionsH$12$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initODICaptionsH$12()V

    return-void
.end method

.method public synthetic lambda$initRingerH$11$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRingerH$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initRow$3$VolumeDialogImpl(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$3(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$10$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$4$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$4(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$5$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$6$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$6(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$7$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$7(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$8$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$8(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$9$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$9(I)V

    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$13$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$13(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$14$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$14()V

    return-void
.end method

.method public synthetic lambda$updateCaptionsIcon$16$VolumeDialogImpl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$updateCaptionsIcon$16(Z)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 2471
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "onOverlayChanged be trigger in vol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 2472
    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 10

    .line 1742
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "onStateChangedH() state: "

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_2

    if-ne v2, v1, :cond_2

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1751
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 1754
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1755
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1756
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1757
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 1759
    :cond_3
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onStateChangedH stream:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1762
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1763
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_remote_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1768
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, p1, :cond_6

    .line 1769
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 1770
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 1771
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1772
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1773
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1775
    :cond_6
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1776
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 1778
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 1779
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 1203
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1204
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 1203
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1205
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 538
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 539
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 544
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 545
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showCaptionsTooltip()V
    .locals 6

    .line 933
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 935
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$XF6c34Qrx7dMvHKAz_Q6TKl64lY;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$XF6c34Qrx7dMvHKAz_Q6TKl64lY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 939
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 951
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 952
    iget v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODIViewHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 953
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/16 v3, 0x55

    .line 954
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 955
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x53

    .line 957
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 958
    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 961
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 964
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 965
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 966
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VfqQNQdyxat1ut-LHF0mfB9W3dg;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VfqQNQdyxat1ut-LHF0mfB9W3dg;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 967
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 981
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method protected tryToRemoveCaptionsTooltip()V
    .locals 2

    .line 1032
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1035
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateRingerH()V
    .locals 7

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_a

    .line 1632
    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 1641
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableRingerViewsH(Z)V

    .line 1642
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_8

    .line 1657
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1661
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1660
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1662
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1664
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_vibrate:I

    .line 1667
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1666
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 1669
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1670
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1669
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1672
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1644
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1646
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1645
    invoke-direct {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1647
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1650
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1653
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1652
    invoke-direct {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
