.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDensity:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 208
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 209
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->mDensity:I

    if-eq p1, v0, :cond_0

    .line 210
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->mDensity:I

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_size:I

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_lock_icon_size:I

    .line 190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onLocaleListChanged()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 165
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->onThemeChange(I)V

    return-void
.end method
