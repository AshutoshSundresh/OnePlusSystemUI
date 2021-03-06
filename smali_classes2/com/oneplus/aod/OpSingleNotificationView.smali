.class public Lcom/oneplus/aod/OpSingleNotificationView;
.super Landroid/widget/LinearLayout;
.source "OpSingleNotificationView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/TextView;

.field private mHeaderContainer:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mNotificationViewCustom:Landroid/widget/LinearLayout;

.field private mNotificationViewDefault:Landroid/widget/LinearLayout;

.field private mSmallText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpSingleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpSingleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    iput-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    iput-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Lcom/oneplus/aod/OpSingleNotificationView;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpSingleNotificationView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->handleUpdateViewInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private adjustNotificationMargin()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->single_notification_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 122
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_0
    return-void
.end method

.method private handleUpdateViewInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 13

    const-string v0, "SingleNotificationView"

    const-string v1, "updateViewInternal"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    .line 172
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "android.text"

    .line 173
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "android.textLines"

    .line 175
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 176
    array-length v7, v3

    if-eqz v7, :cond_0

    .line 177
    array-length v5, v3

    sub-int/2addr v5, v6

    aget-object v5, v3, v5

    .line 180
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v7, 0x0

    .line 184
    invoke-direct {p0, v7, v2}, Lcom/oneplus/aod/OpSingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 187
    :try_start_0
    invoke-direct {p0, v7, v2}, Lcom/oneplus/aod/OpSingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    if-nez v8, :cond_1

    .line 194
    iget-object v9, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    goto :goto_1

    :cond_1
    const/16 v9, 0x19

    .line 195
    invoke-static {v8, v9}, Lcom/android/internal/util/ContrastColorUtil;->changeColorLightness(II)I

    move-result v9

    .line 196
    :goto_1
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->shouldHideSensitive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    .line 197
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateViewInternal: custom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", hideSensitivie="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isLock="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result p1

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", color=0x"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", headerColor=0x"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", titleVis = "

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    const-string v12, "null"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v12

    :goto_2
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", smallTextVis = "

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :cond_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 204
    invoke-direct {p0, v1}, Lcom/oneplus/aod/OpSingleNotificationView;->resolveAppName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 206
    iget-object v11, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 210
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mHeader is null"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    .line 214
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "drawable = null"

    .line 217
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 223
    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz v8, :cond_7

    .line 225
    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 229
    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_8
    const-string p1, "private layout icon null"

    .line 231
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 234
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIcon and icon is null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_4
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v1, :cond_a

    goto/16 :goto_7

    :cond_a
    const/16 v2, 0x8

    const-string v3, ""

    if-eqz v10, :cond_c

    .line 243
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x50d0000

    new-array v5, v6, [Ljava/lang/Object;

    .line 244
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "small text content is empty"

    .line 247
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_b
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 256
    :cond_c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_d

    .line 260
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 263
    :cond_d
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    if-eqz v5, :cond_e

    .line 267
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "small text is null or empty"

    .line 271
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 275
    :cond_e
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p0, "small text is null"

    .line 276
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    return-void

    .line 238
    :cond_10
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Title = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " or SmallText = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Lcom/oneplus/aod/OpSingleNotificationView$1;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oneplus/aod/OpSingleNotificationView$1;-><init>(Lcom/oneplus/aod/OpSingleNotificationView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private resolveAppName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3

    .line 294
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 296
    :try_start_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SingleNotificationView"

    const-string v2, "Unable to recover builder"

    .line 299
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.appInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 303
    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 304
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private showCustomNotification(ZLandroid/view/View;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/oneplus/aod/OpSingleNotificationView;->initHandler()V

    .line 158
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 134
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 137
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->single_notification_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->single_notification_icon_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iget-object v2, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeader:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$style;->single_notification_header:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$style;->single_notification_title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 148
    iget-object p0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$style;->single_notification_smallText:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    sget v0, Lcom/android/systemui/R$id;->single_notification_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mIcon:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->single_notification_header:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeader:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->header_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->single_notification_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mTitle:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/android/systemui/R$id;->single_notification_smallText:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mSmallText:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->notification_default:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/android/systemui/R$id;->notificaiton_custom:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    .line 114
    invoke-direct {p0}, Lcom/oneplus/aod/OpSingleNotificationView;->adjustNotificationMargin()V

    return-void
.end method

.method public onNotificationHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 153
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->updateViewInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public updateRTL(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/oneplus/aod/OpSingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
