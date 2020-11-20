.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$CheckedItemAdapter;,
        Landroidx/appcompat/app/AlertController$AlertParams;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private dialogImageViewLayout:Landroid/widget/FrameLayout;

.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field public mBottomShow:Z

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomImage:Landroid/graphics/drawable/Drawable;

.field private mCustomImageLayout:Landroid/widget/FrameLayout;

.field private mCustomImageView:Landroid/widget/ImageView;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mProgressStyle:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 109
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 142
    new-instance v2, Landroidx/appcompat/app/AlertController$1;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertController$1;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 280
    iput v1, p0, Landroidx/appcompat/app/AlertController;->mProgressStyle:I

    .line 210
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 212
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 213
    new-instance p3, Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 215
    sget-object p3, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 221
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    sget v1, Landroidx/appcompat/R$layout;->op_alert_dialog_material:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 224
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    sget v1, Landroidx/appcompat/R$layout;->op_select_dialog_material:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 225
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v1, Landroidx/appcompat/R$layout;->op_select_dialog_multichoice_material:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 226
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v1, Landroidx/appcompat/R$layout;->op_select_dialog_singlechoice_material:I

    .line 227
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 228
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    sget v1, Landroidx/appcompat/R$layout;->op_select_dialog_item_material:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 229
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 230
    sget p0, Landroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 232
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/appcompat/app/AlertController;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController;->setCustomLayout(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/appcompat/app/AlertController;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController;->showInBottom(Z)V

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 243
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 247
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 252
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 1

    .line 1132
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    .line 1133
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1134
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1135
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getLineMaxNumber(Ljava/lang/CharSequence;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 941
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 945
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$dimen;->op_text_size_body1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 946
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 947
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 948
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 949
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_dialog_background_inset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 950
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Landroidx/appcompat/R$dimen;->op_control_margin_screen_left2:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    .line 951
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    .line 952
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, v2

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_1

    .line 665
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 666
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 669
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 674
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 675
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 676
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 681
    :cond_2
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_3

    .line 682
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 685
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    new-array v2, v0, [Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    aput-object p1, v1, v4

    aput-boolean v4, v2, v4

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    .line 1167
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne p5, v5, :cond_1

    move-object p2, v6

    :cond_1
    aput-object p2, v1, p1

    .line 1168
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    move p2, v4

    :goto_1
    aput-boolean p2, v2, p1

    add-int/2addr p1, v3

    if-eqz p6, :cond_3

    .line 1172
    aput-object p3, v1, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-eqz p7, :cond_4

    .line 1178
    aput-object p4, v1, p1

    .line 1179
    aput-boolean v3, v2, p1

    :cond_4
    move p1, v4

    move p2, p1

    move p3, p2

    :goto_2
    if-ge p1, v0, :cond_8

    .line 1184
    aget-object p4, v1, p1

    if-nez p4, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_7

    if-nez p2, :cond_6

    .line 1191
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1193
    :cond_6
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    move p2, v3

    .line 1199
    :cond_7
    aget-boolean p3, v2, p1

    move-object v6, p4

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_a

    if-eqz p2, :cond_9

    .line 1210
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1216
    :cond_9
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1220
    :cond_a
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_b

    .line 1221
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_b

    .line 1222
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1223
    iget p0, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    const/4 p2, -0x1

    if-le p0, p2, :cond_b

    .line 1225
    invoke-virtual {p1, p0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1226
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_b
    return-void
.end method

.method private setCustomLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 311
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->dialogImageViewLayout:Landroid/widget/FrameLayout;

    .line 312
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->updateImageLayout()V

    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1006
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Landroidx/appcompat/R$attr;->isLightTheme:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1007
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const v2, 0x1020019

    .line 1019
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1020
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v0, :cond_0

    .line 1023
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    sget v3, Landroidx/appcompat/R$drawable;->op_btn_borderless_mini_material_dark:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1039
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ok"

    const-string v5, "OK"

    const-string v6, "Ok"

    const/16 v7, 0x8

    if-eqz v2, :cond_1

    .line 1040
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v4

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1043
    :cond_2
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1045
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v1

    :goto_0
    const v8, 0x102001a

    .line 1055
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1056
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v0, :cond_4

    .line 1059
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    sget v9, Landroidx/appcompat/R$drawable;->op_btn_borderless_mini_material_dark:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1067
    :cond_4
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1068
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1070
    :cond_5
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1071
    :cond_6
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 1073
    :cond_7
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v2, v2, 0x2

    :goto_1
    const v8, 0x102001b

    .line 1083
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1084
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v0, :cond_8

    .line 1087
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    sget v8, Landroidx/appcompat/R$drawable;->op_btn_borderless_mini_material_dark:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1095
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1096
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1098
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1099
    :cond_a
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1101
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v2, v2, 0x4

    :goto_2
    if-ne v2, v1, :cond_c

    .line 1117
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    .line 1119
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_d
    const/4 v0, 0x4

    if-ne v2, v0, :cond_e

    .line 1121
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_e
    :goto_3
    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    move v1, v4

    :goto_4
    if-nez v1, :cond_10

    .line 1127
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 3

    .line 957
    sget v0, Landroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    .line 958
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 959
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 962
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 968
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController;->getLineMaxNumber(Ljava/lang/CharSequence;)I

    move-result p1

    .line 971
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 972
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 975
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 978
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 979
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 980
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 981
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 982
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 985
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 802
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 806
    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 812
    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 813
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_8

    .line 818
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    .line 820
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_5

    .line 823
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 827
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 828
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iput v1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 830
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroidx/appcompat/R$id;->layoutPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 832
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_1

    .line 835
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_1

    :cond_8
    const/16 p0, 0x8

    .line 840
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method private setupDecor()V
    .locals 4

    .line 774
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 775
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 777
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 778
    new-instance v2, Landroidx/appcompat/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p0, 0x1

    .line 790
    invoke-virtual {v0, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    .line 845
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 847
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 850
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 853
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 854
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 856
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 857
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 858
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 859
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_6

    .line 861
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 862
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-eqz v0, :cond_1

    .line 863
    sget v0, Landroidx/appcompat/R$style;->op_control_text_style_h5:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 864
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$color;->op_control_text_color_primary_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 866
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 867
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 868
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 869
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 871
    :cond_2
    iget-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-nez p1, :cond_3

    .line 872
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 873
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/appcompat/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 874
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    if-eqz p1, :cond_4

    .line 883
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 884
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 885
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 889
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 890
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 891
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 892
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 889
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 893
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 897
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 898
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 903
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 904
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 905
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 906
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 907
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    sget v2, Landroidx/appcompat/R$style;->op_control_text_style_h6:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 908
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$color;->op_control_text_color_primary_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 909
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 12

    .line 689
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    sget v1, Landroidx/appcompat/R$id;->imagePanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mCustomImageView:Landroid/widget/ImageView;

    .line 693
    sget v1, Landroidx/appcompat/R$id;->imageLayoutPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mCustomImageLayout:Landroid/widget/FrameLayout;

    .line 694
    sget v1, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 695
    sget v2, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 696
    sget v3, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 700
    sget v4, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 701
    invoke-direct {p0, v7}, Landroidx/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 703
    sget v0, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 704
    sget v4, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 705
    sget v5, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 708
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 709
    invoke-direct {p0, v4, v2}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 710
    invoke-direct {p0, v5, v3}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 712
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->updateImage()V

    .line 713
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->updateImageLayout()V

    .line 714
    invoke-direct {p0, v6}, Landroidx/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 715
    invoke-direct {p0, v8}, Landroidx/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 716
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_0

    .line 719
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v3

    :goto_1
    if-eqz v8, :cond_2

    .line 723
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move v11, v3

    :goto_2
    if-nez v11, :cond_3

    if-eqz v6, :cond_3

    .line 728
    sget v1, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 729
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v9, :cond_4

    .line 737
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_4

    .line 738
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 743
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_5

    .line 744
    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_5
    if-nez v10, :cond_8

    .line 749
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_3
    if-eqz v1, :cond_8

    if-eqz v11, :cond_7

    const/4 v3, 0x2

    :cond_7
    or-int/2addr v3, v9

    .line 753
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_8

    const/4 v4, 0x3

    .line 754
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 760
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9

    .line 761
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 762
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 763
    iget v3, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_9

    .line 765
    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 766
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    :cond_9
    move-object v4, p0

    move-object v5, v0

    .line 769
    invoke-direct/range {v4 .. v11}, Landroidx/appcompat/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    return-void
.end method

.method private showInBottom(Z)V
    .locals 5

    .line 339
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-eqz p1, :cond_3

    .line 341
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 342
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 343
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    sget v1, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 346
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 351
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 352
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_control_margin_screen_left3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 353
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$dimen;->op_control_margin_screen_right3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 354
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    sget v1, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$style;->Oneplus_popup_bottom_edittext_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$style;->Oneplus_popup_bottom_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 364
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 365
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 366
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Landroidx/appcompat/R$drawable;->op_dialog_material_background_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_3
    return-void
.end method

.method private updateImage()V
    .locals 2

    .line 919
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 920
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mCustomImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 923
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    .line 925
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/SmoothRoundLayout;

    if-eqz v0, :cond_1

    .line 926
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SmoothRoundLayout;

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SmoothRoundLayout;->setCornerRadius(F)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 930
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getIconAttributeResId(I)I
    .locals 2

    .line 620
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 621
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 622
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 626
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public installContent()V
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 264
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    iget v2, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    .line 266
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mBottomShow:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$style;->Oneplus_popup_normal_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 268
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/SmoothRoundLayout;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SmoothRoundLayout;

    .line 270
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->op_control_radius_r12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SmoothRoundLayout;->setCornerRadius(F)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, v1}, Landroidx/appcompat/app/AlertController;->showInBottom(Z)V

    .line 275
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->setupView()V

    .line 277
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->setupDecor()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 644
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 649
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 546
    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 552
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 553
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 570
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 559
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 564
    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 565
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCustomImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 298
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mCustomImage:Landroid/graphics/drawable/Drawable;

    .line 299
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->updateImage()V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 582
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 584
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 586
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 589
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 600
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 601
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 603
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 608
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 332
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 316
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 317
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 476
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 484
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 485
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 486
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 494
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 495
    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 497
    iput p2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    .line 498
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    .line 499
    iput p4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    .line 500
    iput p5, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method

.method public updateImageLayout()V
    .locals 2

    .line 303
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->dialogImageViewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->dialogImageViewLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mCustomImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->dialogImageViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mCustomImageLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
