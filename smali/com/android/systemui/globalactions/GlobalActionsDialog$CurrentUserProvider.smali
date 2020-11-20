.class Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentUserProvider"
.end annotation


# instance fields
.field private mFetched:Z

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1305
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    const/4 p1, 0x0

    .line 1306
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mFetched:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 1304
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method get()Landroid/content/pm/UserInfo;
    .locals 1

    .line 1310
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1311
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mFetched:Z

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 1314
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object p0
.end method
