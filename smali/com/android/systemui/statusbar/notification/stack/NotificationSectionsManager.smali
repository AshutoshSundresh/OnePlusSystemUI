.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationSectionsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationSectionsManager.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 SparseArrayUtils.kt\ncom/android/systemui/util/SparseArrayUtilsKt\n+ 7 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,589:1\n8918#2:590\n9251#2,3:591\n10480#2,3:616\n37#3,2:594\n1095#4,3:596\n1084#4,2:599\n846#4:603\n1591#5,2:601\n62#6,5:604\n67#6,4:610\n71#6:615\n32#7:609\n33#7:614\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationSectionsManager.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsManager\n*L\n146#1:590\n146#1,3:591\n500#1,3:616\n147#1,2:594\n225#1,3:596\n336#1,2:599\n489#1:603\n413#1,2:601\n494#1,5:604\n494#1,4:610\n494#1:615\n494#1:609\n494#1:614\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

.field private incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private initialized:Z

.field private final keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private final logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

.field private mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onClearSilentNotifsClickListener:Landroid/view/View$OnClickListener;

.field private parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private peopleHubSubscription:Lcom/android/systemui/statusbar/notification/people/Subscription;

.field private peopleHubVisible:Z

.field private final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field private silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;)V
    .locals 1
    .param p1    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/media/KeyguardMediaController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityStarter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peopleHubViewAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "keyguardMediaController"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "sectionsFeatureManager"

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "logger"

    invoke-static {p7, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    return-void
.end method

.method public static final synthetic access$getBucket(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParent$p(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onClearGentleNotifsClick(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearGentleNotifsClick(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onGentleHeaderClick(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onGentleHeaderClick()V

    return-void
.end method

.method private final expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">(TT;)",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "TT;>;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-object v0
.end method

.method private final getBucket(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-ne p1, v0, :cond_3

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 201
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, p0, :cond_4

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_4
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    const-string/jumbo p1, "view.entry"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final isUsingMultipleSections()Z
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNumberOfBuckets()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final logShadeChild(ILandroid/view/View;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logIncomingHeader(I)V

    goto/16 :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logMediaControls(I)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversationsHeader(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlertingHeader(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilentHeader(I)V

    goto :goto_0

    .line 213
    :cond_4
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logOther(ILjava/lang/Class;)V

    goto :goto_0

    .line 215
    :cond_5
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 216
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    const-string v1, "child.entry"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x4

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    goto :goto_0

    .line 220
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilent(IZ)V

    goto :goto_0

    .line 219
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlerting(IZ)V

    goto :goto_0

    .line 218
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversation(IZ)V

    goto :goto_0

    .line 217
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logHeadsUp(IZ)V

    :goto_0
    return-void
.end method

.method private final logShadeContents()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const/4 v2, 0x0

    .line 1096
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v3, Landroid/view/View;

    .line 225
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeChild(ILandroid/view/View;)V

    move v2, v4

    goto :goto_0

    .line 1096
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v1

    :cond_1
    return-void

    :cond_2
    const-string p0, "parent"

    .line 225
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final onClearGentleNotifsClick(Landroid/view/View;)V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearSilentNotifsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final onGentleHeaderClick()V
    .locals 3

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    invoke-interface {p0, v0, v1, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method private final reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">(TT;",
            "Landroid/view/LayoutInflater;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "parent"

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_3

    if-ne v3, v4, :cond_4

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v3, v0

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_8

    const/4 v4, 0x0

    invoke-virtual {p2, p3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v3, v0, :cond_6

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_1
    return-object p1

    .line 137
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type T"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public beginsSection(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final createSectionsForBuckets()[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNotificationBuckets()[I

    move-result-object v0

    .line 8918
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9251
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 146
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v7, :cond_0

    invoke-direct {v6, v7, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;-><init>(Landroid/view/View;I)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-array p0, v3, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 38
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method public final getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method public final getMediaControlsView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-object p0
.end method

.method public final getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    return-object p0
.end method

.method public final getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method public final hidePeopleRow()V
    .locals 1

    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubVisible:Z

    const-string v0, "PeopleHub dismissed"

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method public final initialize(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->onUiModeChanged()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    .line 441
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    :cond_3
    return-void
.end method

.method public final reinflateViews(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_section_header:I

    .line 153
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 155
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 160
    sget v1, Lcom/android/systemui/R$string;->op_notification_section_header_gentle:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setHeaderText(I)V

    .line 162
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_section_header:I

    .line 165
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 167
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 168
    sget v1, Lcom/android/systemui/R$string;->notification_section_header_alerting:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setHeaderText(I)V

    .line 169
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubSubscription:Lcom/android/systemui/statusbar/notification/people/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubSubscription:Lcom/android/systemui/statusbar/notification/people/Subscription;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    sget v1, Lcom/android/systemui/R$layout;->people_strip:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_section_header:I

    .line 177
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 179
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 180
    sget v1, Lcom/android/systemui/R$string;->notification_section_header_incoming:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setHeaderText(I)V

    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    sget v1, Lcom/android/systemui/R$layout;->keyguard_media_header:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/KeyguardMediaController;->attach(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-void
.end method

.method public final setHeaderForegroundColor(I)V
    .locals 0

    return-void
.end method

.method public final setOnClearSilentNotifsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearSilentNotifsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setPeopleHubVisible(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubVisible:Z

    return-void
.end method

.method public final updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)Z
    .locals 5
    .param p1    # [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSection;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "sections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 846
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;-><init>(Lkotlin/sequences/Sequence;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    .line 495
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 496
    array-length p2, p1

    if-gez p2, :cond_0

    .line 63
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, p2}, Landroid/util/SparseArray;-><init>(I)V

    move-object p2, v1

    .line 66
    :goto_0
    invoke-interface {v0}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 68
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, p0

    .line 69
    :goto_2
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    .line 497
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->addNotif(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 10481
    :cond_2
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p0, :cond_6

    aget-object v3, p1, v1

    .line 501
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBucket()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 502
    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->updateSection(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    move v2, v0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v2, 0x1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v2
.end method

.method public final updateSectionBoundaries()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "test"

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method public final updateSectionBoundaries(Ljava/lang/String;)V
    .locals 25
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "reason"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->isUsingMultipleSections()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStartSectionUpdate(Ljava/lang/String;)V

    .line 300
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    .line 301
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v11

    .line 302
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isMediaControlsEnabled()Z

    move-result v12

    .line 305
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v0, :cond_2

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 306
    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v0, :cond_3

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v15, v0

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 307
    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-eqz v0, :cond_4

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 308
    :goto_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v0, :cond_5

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 309
    :goto_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v0, :cond_6

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 312
    :goto_5
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v13, v3

    move-object v3, v15

    move-object/from16 v16, v4

    move-object v4, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)V

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    aput-object v14, v1, v8

    aput-object v15, v1, v9

    const/4 v2, 0x2

    move-object/from16 v3, v18

    aput-object v3, v1, v2

    const/4 v4, 0x3

    aput-object v5, v1, v4

    const/4 v4, 0x4

    aput-object v6, v1, v4

    .line 321
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 334
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const-string v17, "parent"

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v9

    move v0, v8

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_6
    const/4 v4, -0x1

    if-lt v0, v4, :cond_1f

    .line 335
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_1e

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 337
    invoke-direct {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeChild(ILandroid/view/View;)V

    .line 339
    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->invoke(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setCurrentPosition(Ljava/lang/Integer;)V

    .line 344
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;

    invoke-direct {v9, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)V

    invoke-static {v1, v9}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->takeUntil(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 1084
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    .line 345
    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v22, 0x1

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v24, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v24

    goto :goto_8

    :cond_7
    move-object/from16 v23, v2

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v9, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    move-object/from16 v2, v23

    goto :goto_7

    .line 346
    :cond_8
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 349
    :cond_9
    instance-of v2, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    move-object v2, v4

    :goto_9
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v19, :cond_e

    if-eqz v8, :cond_c

    .line 352
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-eqz v2, :cond_c

    .line 353
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v19

    if-eqz v19, :cond_c

    move-object/from16 v23, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v13

    if-ge v9, v13, :cond_b

    const/4 v9, 0x1

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_b

    :cond_c
    move-object/from16 v23, v13

    const/4 v9, 0x0

    .line 352
    :goto_b
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_c

    :cond_d
    const/16 v19, 0x0

    goto :goto_d

    :cond_e
    move-object/from16 v23, v13

    :goto_c
    const/16 v19, 0x1

    :goto_d
    if-eqz v19, :cond_f

    if-eqz v2, :cond_f

    .line 358
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    if-eqz v9, :cond_f

    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setBucket(I)V

    :cond_f
    const-string v9, "row.entry"

    if-eqz v8, :cond_11

    if-eqz v4, :cond_10

    if-eqz v2, :cond_11

    .line 364
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v4, :cond_11

    :cond_10
    const/4 v4, 0x1

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_19

    if-eqz v10, :cond_19

    if-nez v8, :cond_12

    goto :goto_f

    .line 367
    :cond_12
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_13

    if-eqz v15, :cond_19

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_12

    :cond_13
    :goto_f
    if-nez v8, :cond_14

    goto :goto_10

    .line 368
    :cond_14
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v13, 0x4

    if-ne v4, v13, :cond_15

    if-eqz v3, :cond_19

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_12

    :cond_15
    :goto_10
    if-nez v8, :cond_16

    const/4 v13, 0x5

    goto :goto_11

    .line 369
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v13, 0x5

    if-ne v4, v13, :cond_17

    if-eqz v5, :cond_19

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v4, 0x6

    if-nez v8, :cond_18

    goto :goto_12

    .line 370
    :cond_18
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v4, :cond_19

    if-eqz v6, :cond_19

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    :cond_19
    :goto_12
    if-eqz v2, :cond_1d

    if-nez v21, :cond_1b

    .line 377
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v4

    const/4 v13, 0x4

    if-ne v4, v13, :cond_1a

    goto :goto_13

    :cond_1a
    const/16 v21, 0x0

    goto :goto_14

    :cond_1b
    const/4 v13, 0x4

    :goto_13
    const/16 v21, 0x1

    :goto_14
    if-nez v8, :cond_1c

    move/from16 v20, v0

    .line 382
    :cond_1c
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_15

    :cond_1d
    const/4 v13, 0x4

    :goto_15
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v13, v23

    const/4 v2, 0x2

    const/4 v9, 0x1

    goto/16 :goto_6

    .line 335
    :cond_1e
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    if-eqz v10, :cond_28

    if-eqz v11, :cond_28

    .line 385
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubVisible:Z

    if-eqz v0, :cond_28

    if-eqz v3, :cond_25

    .line 386
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_20

    goto :goto_16

    :cond_20
    if-eqz v5, :cond_21

    .line 389
    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_22

    goto :goto_17

    :cond_22
    if-eqz v6, :cond_23

    .line 390
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 392
    :cond_24
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    :cond_25
    if-eqz v3, :cond_28

    .line 395
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 396
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_26

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    goto :goto_18

    :cond_26
    const/4 v0, 0x1

    .line 397
    :goto_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_19

    :cond_27
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 395
    :goto_19
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_1a

    :cond_28
    const/4 v0, 0x1

    :goto_1a
    const/4 v2, 0x0

    if-eqz v14, :cond_2a

    if-eqz v12, :cond_29

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1b

    :cond_29
    const/4 v8, 0x0

    :goto_1b
    invoke-interface {v14, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    .line 404
    :cond_2a
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v9, "New header target positions:"

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 405
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-eqz v14, :cond_2b

    invoke-interface {v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1c

    :cond_2b
    move v9, v4

    :goto_1c
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logMediaControls(I)V

    .line 406
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-eqz v15, :cond_2c

    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1d

    :cond_2c
    move v9, v4

    :goto_1d
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logIncomingHeader(I)V

    .line 407
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-eqz v3, :cond_2d

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2d

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1e

    :cond_2d
    move v9, v4

    :goto_1e
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversationsHeader(I)V

    .line 408
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-eqz v5, :cond_2e

    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1f

    :cond_2e
    move v5, v4

    :goto_1f
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlertingHeader(I)V

    .line 409
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-eqz v6, :cond_2f

    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2f
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilentHeader(I)V

    .line 413
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    .line 413
    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->adjustViewPosition()V

    goto :goto_20

    .line 415
    :cond_30
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v4, "Final order:"

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeContents()V

    .line 417
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v4, "Section boundary update complete"

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 420
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderView:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v1, :cond_32

    .line 421
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_31

    const/4 v5, 0x2

    .line 422
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v4

    .line 423
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setAreThereDismissableGentleNotifs(Z)V

    .line 424
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_21

    .line 421
    :cond_31
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 425
    :cond_32
    :goto_21
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderView:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-eqz v1, :cond_36

    if-eqz v10, :cond_33

    .line 426
    iget-boolean v4, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHubVisible:Z

    if-eqz v4, :cond_33

    if-nez v21, :cond_33

    move v8, v0

    goto :goto_22

    :cond_33
    move v8, v2

    :goto_22
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->setCanSwipe(Z)V

    if-eqz v3, :cond_36

    .line 427
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 428
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_34

    goto :goto_23

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_35

    .line 429
    :goto_23
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->resetTranslation()V

    .line 431
    :cond_35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_36
    return-void

    .line 334
    :cond_37
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
