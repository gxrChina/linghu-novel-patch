.class public final Lio/legado/app/ui/main/MainActivity;
.super Lio/legado/app/base/VMBaseActivity;
.source "MainActivity.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legado/app/ui/main/MainActivity$PageChangeCallback;,
        Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/legado/app/base/VMBaseActivity<",
        "Lio/legado/app/databinding/ActivityMainBinding;",
        "Lio/legado/app/ui/main/MainViewModel;",
        ">;",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nio/legado/app/ui/main/MainActivity\n+ 2 ActivityViewBindings.kt\nio/legado/app/utils/viewbindingdelegate/ActivityViewBindingsKt\n+ 3 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 EventBusExtensions.kt\nio/legado/app/utils/EventBusExtensionsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,543:1\n12#2,11:544\n75#3,13:555\n819#4:568\n847#4:569\n1747#4,3:570\n848#4:573\n32#5,4:574\n36#5:579\n13#5:580\n37#5:581\n38#5:583\n32#5,4:584\n36#5:589\n13#5:590\n37#5:591\n38#5:593\n32#5,4:594\n36#5:599\n13#5:600\n37#5:601\n38#5:603\n13309#6:578\n13310#6:582\n13309#6:588\n13310#6:592\n13309#6:598\n13310#6:602\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nio/legado/app/ui/main/MainActivity\n*L\n80#1:544,11\n81#1:555,13\n199#1:568\n199#1:569\n200#1:570,3\n199#1:573\n429#1:574,4\n429#1:579\n429#1:580\n429#1:581\n429#1:583\n432#1:584,4\n432#1:589\n432#1:590\n432#1:591\n432#1:593\n440#1:594,4\n440#1:599\n440#1:600\n440#1:601\n440#1:603\n429#1:578\n429#1:582\n432#1:588\n432#1:592\n440#1:598\n440#1:602\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0001\n\u0002\u0008\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005:\u0002TUB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020/H\u0002J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000204H\u0002J(\u00106\u001a\u0008\u0012\u0004\u0012\u000208072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u000208072\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020407J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0012\u0010?\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0014J\u0010\u0010@\u001a\u00020<2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020/2\u0006\u0010A\u001a\u00020BH\u0016J\u000e\u0010D\u001a\u00020<H\u0082@\u00a2\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u0004\u0018\u00010GH\u0082@\u00a2\u0006\u0002\u0010EJ\u0010\u0010H\u001a\u0004\u0018\u00010GH\u0082@\u00a2\u0006\u0002\u0010EJ\u0008\u0010I\u001a\u00020/H\u0002J\u0008\u0010J\u001a\u00020/H\u0002J\u0010\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u000201H\u0014J\u0008\u0010M\u001a\u00020/H\u0014J\u0008\u0010N\u001a\u00020/H\u0016J\u0008\u0010O\u001a\u00020/H\u0016J\u0008\u0010P\u001a\u00020/H\u0002J\u0008\u0010Q\u001a\u00020/H\u0002J\u0010\u0010R\u001a\u00020\u00122\u0006\u0010S\u001a\u00020\u0012H\u0002R\u001b\u0010\u0008\u001a\u00020\u00028TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00120\"X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010#R\u001f\u0010$\u001a\u00060%R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u000c\u001a\u0004\u0008&\u0010\'R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u000c\u001a\u0004\u0008+\u0010,\u00a8\u0006V"
    }
    d2 = {
        "Lio/legado/app/ui/main/MainActivity;",
        "Lio/legado/app/base/VMBaseActivity;",
        "Lio/legado/app/databinding/ActivityMainBinding;",
        "Lio/legado/app/ui/main/MainViewModel;",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;",
        "<init>",
        "()V",
        "binding",
        "getBinding",
        "()Lio/legado/app/databinding/ActivityMainBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "getViewModel",
        "()Lio/legado/app/ui/main/MainViewModel;",
        "viewModel$delegate",
        "idBookshelf",
        "",
        "idBookshelf1",
        "idBookshelf2",
        "idExplore",
        "idRss",
        "idMy",
        "exitTime",
        "",
        "bookshelfReselected",
        "exploreReselected",
        "pagePosition",
        "fragmentMap",
        "Ljava/util/HashMap;",
        "Landroidx/fragment/app/Fragment;",
        "bottomMenuCount",
        "realPositions",
        "",
        "[Ljava/lang/Integer;",
        "adapter",
        "Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;",
        "getAdapter",
        "()Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;",
        "adapter$delegate",
        "onUpBooksBadgeView",
        "Lio/legado/app/ui/widget/text/BadgeView;",
        "getOnUpBooksBadgeView",
        "()Lio/legado/app/ui/widget/text/BadgeView;",
        "onUpBooksBadgeView$delegate",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadBookSource",
        "removeEmojis",
        "",
        "input",
        "filterBookSources",
        "",
        "Lio/legado/app/data/entities/BookSource;",
        "bookSources",
        "keywords",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onPostCreate",
        "onNavigationItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onNavigationItemReselected",
        "privacyPolicy",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "upVersion",
        "",
        "setLocalPassword",
        "notifyAppCrash",
        "backupSync",
        "onSaveInstanceState",
        "outState",
        "onDestroy",
        "recreate",
        "observeLiveBus",
        "upBottomMenu",
        "upHomePage",
        "getFragmentId",
        "position",
        "PageChangeCallback",
        "TabFragmentPageAdapter",
        "app_hlxRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x52
.end annotation


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lkotlin/Lazy;

.field private bookshelfReselected:J

.field private bottomMenuCount:I

.field private exitTime:J

.field private exploreReselected:J

.field private final fragmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final idBookshelf:I

.field private final idBookshelf1:I

.field private final idBookshelf2:I

.field private final idExplore:I

.field private final idMy:I

.field private final idRss:I

.field private final onUpBooksBadgeView$delegate:Lkotlin/Lazy;

.field private pagePosition:I

.field private final realPositions:[Ljava/lang/Integer;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$h8KbmpxgAvMiwmJ8OgFmUEyZPVs(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/legado/app/ui/main/MainActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lio/legado/app/ui/main/MainActivity;->onActivityCreated$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/legado/app/ui/main/MainActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v7}, Lio/legado/app/base/VMBaseActivity;-><init>(ZLio/legado/app/constant/Theme;Lio/legado/app/constant/Theme;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    move-object v0, p0

    check-cast v0, Landroidx/core/app/ComponentActivity;

    .line 548
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewBindingActivity$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewBindingActivity$default$1;-><init>(Landroidx/core/app/ComponentActivity;Z)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lio/legado/app/ui/main/MainActivity;->binding$delegate:Lkotlin/Lazy;

    .line 81
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 559
    new-instance v1, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 563
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lio/legado/app/ui/main/MainViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 565
    new-instance v5, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v5, v0}, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 567
    new-instance v6, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$3;

    invoke-direct {v6, v7, v0}, Lio/legado/app/ui/main/MainActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 563
    invoke-direct {v2, v4, v5, v1, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 81
    iput-object v2, p0, Lio/legado/app/ui/main/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    const/16 v0, 0xb

    .line 83
    iput v0, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf1:I

    const/16 v0, 0xc

    .line 84
    iput v0, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf2:I

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lio/legado/app/ui/main/MainActivity;->idExplore:I

    const/4 v1, 0x2

    .line 86
    iput v1, p0, Lio/legado/app/ui/main/MainActivity;->idRss:I

    const/4 v2, 0x3

    .line 87
    iput v2, p0, Lio/legado/app/ui/main/MainActivity;->idMy:I

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/legado/app/ui/main/MainActivity;->fragmentMap:Ljava/util/HashMap;

    const/4 v4, 0x4

    .line 93
    iput v4, p0, Lio/legado/app/ui/main/MainActivity;->bottomMenuCount:I

    new-array v4, v4, [Ljava/lang/Integer;

    .line 94
    iget v5, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iput-object v4, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    .line 95
    new-instance v0, Lio/legado/app/ui/main/MainActivity$adapter$2;

    invoke-direct {v0, p0}, Lio/legado/app/ui/main/MainActivity$adapter$2;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/legado/app/ui/main/MainActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 98
    new-instance v0, Lio/legado/app/ui/main/MainActivity$onUpBooksBadgeView$2;

    invoke-direct {v0, p0}, Lio/legado/app/ui/main/MainActivity$onUpBooksBadgeView$2;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/legado/app/ui/main/MainActivity;->onUpBooksBadgeView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$backupSync(Lio/legado/app/ui/main/MainActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->backupSync()V

    return-void
.end method

.method public static final synthetic access$getBottomMenuCount$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->bottomMenuCount:I

    return p0
.end method

.method public static final synthetic access$getExitTime$p(Lio/legado/app/ui/main/MainActivity;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lio/legado/app/ui/main/MainActivity;->exitTime:J

    return-wide v0
.end method

.method public static final synthetic access$getFragmentId(Lio/legado/app/ui/main/MainActivity;I)I
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity;->getFragmentId(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFragmentMap$p(Lio/legado/app/ui/main/MainActivity;)Ljava/util/HashMap;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/legado/app/ui/main/MainActivity;->fragmentMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getIdBookshelf1$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf1:I

    return p0
.end method

.method public static final synthetic access$getIdBookshelf2$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf2:I

    return p0
.end method

.method public static final synthetic access$getIdExplore$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->idExplore:I

    return p0
.end method

.method public static final synthetic access$getIdMy$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->idMy:I

    return p0
.end method

.method public static final synthetic access$getIdRss$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->idRss:I

    return p0
.end method

.method public static final synthetic access$getOnUpBooksBadgeView(Lio/legado/app/ui/main/MainActivity;)Lio/legado/app/ui/widget/text/BadgeView;
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->getOnUpBooksBadgeView()Lio/legado/app/ui/widget/text/BadgeView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPagePosition$p(Lio/legado/app/ui/main/MainActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lio/legado/app/ui/main/MainActivity;->pagePosition:I

    return p0
.end method

.method public static final synthetic access$getRealPositions$p(Lio/legado/app/ui/main/MainActivity;)[Ljava/lang/Integer;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$notifyAppCrash(Lio/legado/app/ui/main/MainActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->notifyAppCrash()V

    return-void
.end method

.method public static final synthetic access$privacyPolicy(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity;->privacyPolicy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeEmojis(Lio/legado/app/ui/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity;->removeEmojis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setExitTime$p(Lio/legado/app/ui/main/MainActivity;J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lio/legado/app/ui/main/MainActivity;->exitTime:J

    return-void
.end method

.method public static final synthetic access$setLocalPassword(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity;->setLocalPassword(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPagePosition$p(Lio/legado/app/ui/main/MainActivity;I)V
    .locals 0

    .line 76
    iput p1, p0, Lio/legado/app/ui/main/MainActivity;->pagePosition:I

    return-void
.end method

.method public static final synthetic access$upBottomMenu(Lio/legado/app/ui/main/MainActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->upBottomMenu()V

    return-void
.end method

.method public static final synthetic access$upVersion(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity;->upVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final backupSync()V
    .locals 7

    .line 383
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lio/legado/app/ui/main/MainActivity$backupSync$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lio/legado/app/ui/main/MainActivity$backupSync$1;-><init>(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getAdapter()Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;

    return-object v0
.end method

.method private final getFragmentId(I)I
    .locals 1

    .line 483
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 484
    iget v0, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf:I

    if-ne p1, v0, :cond_1

    .line 485
    sget-object p1, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {p1}, Lio/legado/app/help/config/AppConfig;->getBookGroupStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf2:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lio/legado/app/ui/main/MainActivity;->idBookshelf1:I

    :cond_1
    :goto_0
    return p1
.end method

.method private final getOnUpBooksBadgeView()Lio/legado/app/ui/widget/text/BadgeView;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->onUpBooksBadgeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/legado/app/ui/widget/text/BadgeView;

    return-object v0
.end method

.method private final loadBookSource()V
    .locals 6

    # patched: restore built-in book source auto-import.
    # original gates (remote loadSource flag + original APK signature SHA-1) removed:
    # a repacked build can never match the original signature, which silently
    # disabled the first-run import of assets/bookSource.json

    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getImportBookSourceV()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "v10000000"

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lio/legado/app/ui/main/MainActivity$loadBookSource$1;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lio/legado/app/ui/main/MainActivity$loadBookSource$1;-><init>(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final notifyAppCrash()V
    .locals 4

    .line 367
    sget-object v0, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/LocalConfig;->getAppCrash()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    sget-object v0, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/legado/app/help/config/LocalConfig;->setAppCrash(Z)V

    .line 371
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lio/legado/app/R$string;->draw:I

    invoke-virtual {p0, v1}, Lio/legado/app/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "\u68c0\u6d4b\u5230\u9605\u8bfb\u53d1\u751f\u4e86\u5d29\u6e83\uff0c\u662f\u5426\u6253\u5f00\u5d29\u6e83\u65e5\u5fd7\u4ee5\u4fbf\u62a5\u544a\u95ee\u9898\uff1f"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lio/legado/app/ui/main/MainActivity$notifyAppCrash$1;

    invoke-direct {v3, p0}, Lio/legado/app/ui/main/MainActivity$notifyAppCrash$1;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lio/legado/app/lib/dialogs/AndroidDialogsKt;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final onActivityCreated$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/legado/app/ui/main/MainActivity;)V
    .locals 3

    const-string v0, "$ut"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/legado/app/CfgSyncUtils;

    invoke-virtual {p0}, Lio/legado/app/CfgSyncUtils;->getUmengKey()Ljava/lang/String;

    move-result-object p0

    .line 147
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, p0, v2, v1, v2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    sget-object p0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    .line 151
    :cond_0
    invoke-direct {p1}, Lio/legado/app/ui/main/MainActivity;->loadBookSource()V

    return-void
.end method

.method private final privacyPolicy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 289
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 290
    sget-object v2, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    invoke-virtual {v2}, Lio/legado/app/help/config/LocalConfig;->getPrivacyPolicyOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "privacyPolicy.md"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "open(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 295
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    sget v4, Lio/legado/app/R$string;->privacy_policy:I

    invoke-virtual {p0, v4}, Lio/legado/app/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v5, Lio/legado/app/ui/main/MainActivity$privacyPolicy$2$1;

    invoke-direct {v5, p0, v1}, Lio/legado/app/ui/main/MainActivity$privacyPolicy$2$1;-><init>(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4, v3, v5}, Lio/legado/app/lib/dialogs/AndroidDialogsKt;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Landroidx/appcompat/app/AlertDialog;

    .line 289
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0
.end method

.method private final removeEmojis(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[\\uD83C-\\uDBFF\\uDC00-\\uDFFF]+"

    .line 193
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 194
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "replaceAll(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final setLocalPassword(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 342
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 343
    sget-object v2, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    invoke-virtual {v2}, Lio/legado/app/help/config/LocalConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    sget v3, Lio/legado/app/R$string;->set_local_password:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lio/legado/app/R$string;->set_local_password_summary:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lio/legado/app/ui/main/MainActivity$setLocalPassword$2$1;

    invoke-direct {v5, p0, v1}, Lio/legado/app/ui/main/MainActivity$setLocalPassword$2$1;-><init>(Lio/legado/app/ui/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3, v4, v5}, Lio/legado/app/lib/dialogs/AndroidDialogsKt;->alert(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroidx/appcompat/app/AlertDialog;

    .line 342
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0
.end method

.method private final upBottomMenu()V
    .locals 4

    .line 446
    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getShowDiscovery()Z

    move-result v0

    .line 447
    sget-object v1, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v1}, Lio/legado/app/help/config/AppConfig;->getShowRSS()Z

    move-result v1

    .line 448
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/legado/app/databinding/ActivityMainBinding;->bottomNavigationView:Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;

    invoke-virtual {v2}, Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 449
    sget v3, Lio/legado/app/R$id;->menu_discovery:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    sget v3, Lio/legado/app/R$id;->menu_rss:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v3, p0, Lio/legado/app/ui/main/MainActivity;->idExplore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 459
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v3, p0, Lio/legado/app/ui/main/MainActivity;->idRss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    :cond_1
    add-int/2addr v0, v2

    .line 462
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v3, p0, Lio/legado/app/ui/main/MainActivity;->idMy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/2addr v0, v2

    .line 463
    iput v0, p0, Lio/legado/app/ui/main/MainActivity;->bottomMenuCount:I

    .line 464
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->getAdapter()Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final upHomePage()V
    .locals 4

    .line 468
    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getDefaultHomePage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4e08056d

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0xdac

    if-eq v1, v2, :cond_3

    const v2, 0x1ba52

    if-eq v1, v2, :cond_1

    const v2, 0x79c48ce1

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "bookshelf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "rss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 474
    :cond_2
    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getShowRSS()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v2, p0, Lio/legado/app/ui/main/MainActivity;->idRss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    const-string v1, "my"

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v2, p0, Lio/legado/app/ui/main/MainActivity;->idMy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_5
    const-string v1, "explore"

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 470
    :cond_6
    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getShowDiscovery()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 471
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v2, p0, Lio/legado/app/ui/main/MainActivity;->idExplore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method private final upVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 314
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 315
    sget-object v2, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    invoke-virtual {v2}, Lio/legado/app/help/config/LocalConfig;->getVersionCode()J

    move-result-wide v2

    sget-object v4, Lio/legado/app/constant/AppConst;->INSTANCE:Lio/legado/app/constant/AppConst;

    invoke-virtual {v4}, Lio/legado/app/constant/AppConst;->getAppInfo()Lio/legado/app/constant/AppConst$AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lio/legado/app/constant/AppConst$AppInfo;->getVersionCode()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 316
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 319
    :cond_0
    sget-object v2, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    sget-object v3, Lio/legado/app/constant/AppConst;->INSTANCE:Lio/legado/app/constant/AppConst;

    invoke-virtual {v3}, Lio/legado/app/constant/AppConst;->getAppInfo()Lio/legado/app/constant/AppConst$AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/legado/app/constant/AppConst$AppInfo;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/legado/app/help/config/LocalConfig;->setVersionCode(J)V

    .line 320
    sget-object v2, Lio/legado/app/help/config/LocalConfig;->INSTANCE:Lio/legado/app/help/config/LocalConfig;

    invoke-virtual {v2}, Lio/legado/app/help/config/LocalConfig;->isFirstOpenApp()Z

    move-result v2

    const-string v3, "getString(...)"

    const-string v4, "open(...)"

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v5, "help/appHelp.md"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 322
    new-instance v2, Lio/legado/app/ui/widget/dialog/TextDialog;

    sget v4, Lio/legado/app/R$string;->help:I

    invoke-virtual {p0, v4}, Lio/legado/app/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lio/legado/app/ui/widget/dialog/TextDialog$Mode;->MD:Lio/legado/app/ui/widget/dialog/TextDialog$Mode;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lio/legado/app/ui/widget/dialog/TextDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/legado/app/ui/widget/dialog/TextDialog$Mode;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 323
    new-instance v3, Lio/legado/app/ui/main/MainActivity$upVersion$2$1;

    invoke-direct {v3, v1}, Lio/legado/app/ui/main/MainActivity$upVersion$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Lio/legado/app/ui/widget/dialog/TextDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v1, v2}, Lio/legado/app/utils/ActivityExtensionsKt;->showDialogFragment(Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v5, "updateLog.md"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 329
    new-instance v2, Lio/legado/app/ui/widget/dialog/TextDialog;

    sget v4, Lio/legado/app/R$string;->update_log:I

    invoke-virtual {p0, v4}, Lio/legado/app/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lio/legado/app/ui/widget/dialog/TextDialog$Mode;->MD:Lio/legado/app/ui/widget/dialog/TextDialog$Mode;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lio/legado/app/ui/widget/dialog/TextDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/legado/app/ui/widget/dialog/TextDialog$Mode;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    new-instance v3, Lio/legado/app/ui/main/MainActivity$upVersion$2$2;

    invoke-direct {v3, v1}, Lio/legado/app/ui/main/MainActivity$upVersion$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Lio/legado/app/ui/widget/dialog/TextDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v1, v2}, Lio/legado/app/utils/ActivityExtensionsKt;->showDialogFragment(Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 314
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 213
    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 214
    invoke-static {v0}, Lio/legado/app/utils/ViewExtensionsKt;->hideSoftInput(Landroid/view/View;)Z

    .line 219
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lio/legado/app/base/VMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final filterBookSources(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/legado/app/data/entities/BookSource;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/legado/app/data/entities/BookSource;",
            ">;"
        }
    .end annotation

    const-string v0, "bookSources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywords"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    check-cast p1, Ljava/lang/Iterable;

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 569
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/legado/app/data/entities/BookSource;

    .line 200
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    .line 570
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_5

    .line 571
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    invoke-virtual {v2}, Lio/legado/app/data/entities/BookSource;->getBookSourceName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 202
    invoke-virtual {v2}, Lio/legado/app/data/entities/BookSource;->getBookSourceGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v4, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-nez v6, :cond_6

    .line 203
    invoke-virtual {v2}, Lio/legado/app/data/entities/BookSource;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v4, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 204
    invoke-virtual {v2}, Lio/legado/app/data/entities/BookSource;->getBookSourceComment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v4, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v7

    :goto_4
    if-eqz v4, :cond_2

    move v5, v7

    :cond_7
    :goto_5
    if-nez v5, :cond_0

    .line 569
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_8
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method protected getBinding()Lio/legado/app/databinding/ActivityMainBinding;
    .locals 2

    .line 80
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/legado/app/databinding/ActivityMainBinding;

    return-object v0
.end method

.method public bridge synthetic getViewModel()Landroidx/lifecycle/ViewModel;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getViewModel()Lio/legado/app/ui/main/MainViewModel;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    return-object v0
.end method

.method protected getViewModel()Lio/legado/app/ui/main/MainViewModel;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/legado/app/ui/main/MainViewModel;

    return-object v0
.end method

.method public observeLiveBus()V
    .locals 6

    .line 426
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getViewModel()Lio/legado/app/ui/main/MainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/legado/app/ui/main/MainViewModel;->getOnUpBooksLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lio/legado/app/ui/main/MainActivity$observeLiveBus$1;

    invoke-direct {v2, p0}, Lio/legado/app/ui/main/MainActivity$observeLiveBus$1;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lio/legado/app/ui/main/MainActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lio/legado/app/ui/main/MainActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 429
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "RECREATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/legado/app/ui/main/MainActivity$observeLiveBus$2;

    invoke-direct {v2, p0}, Lio/legado/app/ui/main/MainActivity$observeLiveBus$2;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 574
    new-instance v3, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;

    invoke-direct {v3, v2}, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    const/4 v2, 0x0

    .line 578
    aget-object v1, v1, v2

    .line 580
    const-class v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/jeremyliao/liveeventbus/LiveEventBus;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/jeremyliao/liveeventbus/core/Observable;

    move-result-object v1

    const-string v4, "get(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1, v0, v3}, Lcom/jeremyliao/liveeventbus/core/Observable;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v1, "notifyMain"

    .line 432
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/legado/app/ui/main/MainActivity$observeLiveBus$3;

    invoke-direct {v3, p0}, Lio/legado/app/ui/main/MainActivity$observeLiveBus$3;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 584
    new-instance v5, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;

    invoke-direct {v5, v3}, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Landroidx/lifecycle/Observer;

    .line 588
    aget-object v1, v1, v2

    .line 590
    const-class v3, Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/jeremyliao/liveeventbus/LiveEventBus;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/jeremyliao/liveeventbus/core/Observable;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-interface {v1, v0, v5}, Lcom/jeremyliao/liveeventbus/core/Observable;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v1, "threadCount"

    .line 440
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/legado/app/ui/main/MainActivity$observeLiveBus$4;

    invoke-direct {v3, p0}, Lio/legado/app/ui/main/MainActivity$observeLiveBus$4;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 594
    new-instance v5, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;

    invoke-direct {v5, v3}, Lio/legado/app/utils/EventBusExtensionsKt$observeEvent$o$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Landroidx/lifecycle/Observer;

    .line 598
    aget-object v1, v1, v2

    .line 600
    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jeremyliao/liveeventbus/LiveEventBus;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/jeremyliao/liveeventbus/core/Observable;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-interface {v1, v0, v5}, Lcom/jeremyliao/liveeventbus/core/Observable;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 103
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->upBottomMenu()V

    .line 104
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object p1

    .line 105
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "viewPagerMain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lio/legado/app/lib/theme/MaterialValueHelperKt;->getPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lio/legado/app/utils/ViewExtensionsKt;->setEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 106
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 107
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->getAdapter()Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 108
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lio/legado/app/ui/main/MainActivity$PageChangeCallback;

    invoke-direct {v2, p0}, Lio/legado/app/ui/main/MainActivity$PageChangeCallback;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 109
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->bottomNavigationView:Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;

    invoke-static {v1}, Lio/legado/app/lib/theme/MaterialValueHelperKt;->getElevation(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;->setElevation(F)V

    .line 110
    iget-object v0, p1, Lio/legado/app/databinding/ActivityMainBinding;->bottomNavigationView:Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 111
    iget-object p1, p1, Lio/legado/app/databinding/ActivityMainBinding;->bottomNavigationView:Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    invoke-virtual {p1, v0}, Lio/legado/app/lib/theme/view/ThemeBottomNavigationVIew;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V

    .line 113
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->upHomePage()V

    .line 114
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    const-string p1, "<get-onBackPressedDispatcher>(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    const/4 v3, 0x0

    new-instance p1, Lio/legado/app/ui/main/MainActivity$onActivityCreated$2;

    invoke-direct {p1, p0}, Lio/legado/app/ui/main/MainActivity$onActivityCreated$2;-><init>(Lio/legado/app/ui/main/MainActivity;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    .line 137
    :try_start_0
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/legado/app/CfgSyncUtils;->getInstance(Landroid/content/Context;)Lio/legado/app/CfgSyncUtils;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 138
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/legado/app/CfgSyncUtils;

    invoke-virtual {v0}, Lio/legado/app/CfgSyncUtils;->getUpdateURL()Ljava/lang/String;

    move-result-object v0

    .line 139
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/xuexiang/xupdate/XUpdate;->newBuild(Landroid/content/Context;)Lcom/xuexiang/xupdate/UpdateManager$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lcom/xuexiang/xupdate/UpdateManager$Builder;->updateUrl(Ljava/lang/String;)Lcom/xuexiang/xupdate/UpdateManager$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/xuexiang/xupdate/UpdateManager$Builder;->update()V

    .line 144
    :cond_0
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/legado/app/CfgSyncUtils;

    invoke-virtual {v0}, Lio/legado/app/CfgSyncUtils;->getUmengKey()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :cond_1

    .line 145
    nop

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/legado/app/CfgSyncUtils;

    new-instance v1, Lio/legado/app/ui/main/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lio/legado/app/ui/main/MainActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/legado/app/ui/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/legado/app/CfgSyncUtils;->syncCfg(Lio/legado/app/CfgSyncUtils$CfgCyncCallBack;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lio/legado/app/ui/main/MainActivity;->loadBookSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 8

    .line 406
    invoke-super {p0}, Lio/legado/app/base/VMBaseActivity;->onDestroy()V

    .line 407
    sget-object v0, Lio/legado/app/help/coroutine/Coroutine;->Companion:Lio/legado/app/help/coroutine/Coroutine$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lio/legado/app/ui/main/MainActivity$onDestroy$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/legado/app/ui/main/MainActivity$onDestroy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lio/legado/app/help/coroutine/Coroutine$Companion;->async$default(Lio/legado/app/help/coroutine/Coroutine$Companion;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/legado/app/help/coroutine/Coroutine;

    .line 411
    sget-object v0, Lio/legado/app/help/storage/Backup;->INSTANCE:Lio/legado/app/help/storage/Backup;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/legado/app/help/storage/Backup;->autoBack(Landroid/content/Context;)V

    return-void
.end method

.method public onNavigationItemReselected(Landroid/view/MenuItem;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 268
    sget v0, Lio/legado/app/R$id;->menu_bookshelf:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    if-ne p1, v0, :cond_2

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/legado/app/ui/main/MainActivity;->bookshelfReselected:J

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/legado/app/ui/main/MainActivity;->bookshelfReselected:J

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lio/legado/app/ui/main/MainActivity;->fragmentMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/legado/app/ui/main/MainActivity;->getFragmentId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;->gotoTop()V

    goto :goto_0

    .line 276
    :cond_2
    sget v0, Lio/legado/app/R$id;->menu_discovery:I

    if-ne p1, v0, :cond_5

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/legado/app/ui/main/MainActivity;->exploreReselected:J

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/legado/app/ui/main/MainActivity;->exploreReselected:J

    goto :goto_0

    .line 280
    :cond_3
    iget-object p1, p0, Lio/legado/app/ui/main/MainActivity;->fragmentMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/legado/app/ui/main/explore/ExploreFragment;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lio/legado/app/ui/main/explore/ExploreFragment;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lio/legado/app/ui/main/explore/ExploreFragment;->compressExplore()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lio/legado/app/ui/main/MainActivity;->getBinding()Lio/legado/app/databinding/ActivityMainBinding;

    move-result-object v0

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 251
    sget v1, Lio/legado/app/R$id;->menu_bookshelf:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 252
    iget-object p1, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 254
    :cond_0
    sget v1, Lio/legado/app/R$id;->menu_discovery:I

    if-ne p1, v1, :cond_1

    .line 255
    iget-object p1, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v1, p0, Lio/legado/app/ui/main/MainActivity;->idExplore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 257
    :cond_1
    sget v1, Lio/legado/app/R$id;->menu_rss:I

    if-ne p1, v1, :cond_2

    .line 258
    iget-object p1, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v1, p0, Lio/legado/app/ui/main/MainActivity;->idRss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 260
    :cond_2
    sget v1, Lio/legado/app/R$id;->menu_my_config:I

    if-ne p1, v1, :cond_3

    .line 261
    iget-object p1, v0, Lio/legado/app/databinding/ActivityMainBinding;->viewPagerMain:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->realPositions:[Ljava/lang/Integer;

    iget v1, p0, Lio/legado/app/ui/main/MainActivity;->idMy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3
    :goto_0
    return v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 227
    invoke-super {p0, p1}, Lio/legado/app/base/VMBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 228
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lio/legado/app/ui/main/MainActivity$onPostCreate$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lio/legado/app/ui/main/MainActivity$onPostCreate$1;-><init>(Lio/legado/app/ui/main/MainActivity;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-super {p0, p1}, Lio/legado/app/base/VMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 400
    sget-object v0, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    invoke-virtual {v0}, Lio/legado/app/help/config/AppConfig;->getAutoRefreshBook()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isAutoRefreshedBook"

    const/4 v1, 0x1

    .line 401
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public recreate()V
    .locals 2

    .line 419
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity;->fragmentMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/legado/app/ui/main/MainActivity;->getFragmentId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lio/legado/app/ui/main/bookshelf/BaseBookshelfFragment;->upSort()V

    .line 422
    :cond_1
    invoke-super {p0}, Lio/legado/app/base/VMBaseActivity;->recreate()V

    return-void
.end method
