.class final Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legado/app/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabFragmentPageAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;",
        "Landroidx/fragment/app/FragmentStatePagerAdapter;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "<init>",
        "(Lio/legado/app/ui/main/MainActivity;Landroidx/fragment/app/FragmentManager;)V",
        "getId",
        "",
        "position",
        "getItemPosition",
        "any",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "getCount",
        "instantiateItem",
        "container",
        "Landroid/view/ViewGroup;",
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
.field final synthetic this$0:Lio/legado/app/ui/main/MainActivity;


# direct methods
.method public constructor <init>(Lio/legado/app/ui/main/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iput-object p1, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    const/4 p1, 0x1

    .line 502
    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method private final getId(I)I
    .locals 1

    .line 505
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v0, p1}, Lio/legado/app/ui/main/MainActivity;->access$getFragmentId(Lio/legado/app/ui/main/MainActivity;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 534
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v0}, Lio/legado/app/ui/main/MainActivity;->access$getBottomMenuCount$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 524
    invoke-direct {p0, p1}, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->getId(I)I

    move-result v0

    .line 525
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v1}, Lio/legado/app/ui/main/MainActivity;->access$getIdBookshelf1$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/legado/app/ui/main/bookshelf/style1/BookshelfFragment1;

    invoke-direct {v0, p1}, Lio/legado/app/ui/main/bookshelf/style1/BookshelfFragment1;-><init>(I)V

    check-cast v0, Lio/legado/app/base/BaseFragment;

    goto :goto_0

    .line 526
    :cond_0
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v1}, Lio/legado/app/ui/main/MainActivity;->access$getIdBookshelf2$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lio/legado/app/ui/main/bookshelf/style2/BookshelfFragment2;

    invoke-direct {v0, p1}, Lio/legado/app/ui/main/bookshelf/style2/BookshelfFragment2;-><init>(I)V

    check-cast v0, Lio/legado/app/base/BaseFragment;

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v1}, Lio/legado/app/ui/main/MainActivity;->access$getIdExplore$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    # patched: restore upstream explore tab (book-source driven), replacing the fork's rank/bookstore page
    new-instance v1, Lio/legado/app/ui/main/explore/ExploreFragment;

    invoke-direct {v1, p1}, Lio/legado/app/ui/main/explore/ExploreFragment;-><init>(I)V

    move-object v0, v1

    check-cast v0, Lio/legado/app/base/BaseFragment;

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v1}, Lio/legado/app/ui/main/MainActivity;->access$getIdRss$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance p1, Lio/legado/app/ui/main/rss/RssFragment;

    invoke-direct {p1}, Lio/legado/app/ui/main/rss/RssFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Lio/legado/app/base/BaseFragment;

    goto :goto_0

    .line 529
    :cond_3
    new-instance v0, Lio/legado/app/ui/main/my/MyFragment;

    invoke-direct {v0, p1}, Lio/legado/app/ui/main/my/MyFragment;-><init>(I)V

    check-cast v0, Lio/legado/app/base/BaseFragment;

    :goto_0
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    const-string v0, "any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    move-object v0, p1

    check-cast v0, Lio/legado/app/ui/main/MainFragmentInterface;

    invoke-interface {v0}, Lio/legado/app/ui/main/MainFragmentInterface;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 511
    invoke-direct {p0, v0}, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->getId(I)I

    move-result v0

    .line 512
    iget-object v2, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v2}, Lio/legado/app/ui/main/MainActivity;->access$getIdBookshelf1$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    instance-of v2, p1, Lio/legado/app/ui/main/bookshelf/style1/BookshelfFragment1;

    if-nez v2, :cond_4

    .line 513
    :cond_0
    iget-object v2, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v2}, Lio/legado/app/ui/main/MainActivity;->access$getIdBookshelf2$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_1

    instance-of v2, p1, Lio/legado/app/ui/main/bookshelf/style2/BookshelfFragment2;

    if-nez v2, :cond_4

    .line 514
    :cond_1
    iget-object v2, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v2}, Lio/legado/app/ui/main/MainActivity;->access$getIdExplore$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_2

    instance-of v2, p1, Lio/legado/app/ui/main/explore/ExploreFragment;

    if-nez v2, :cond_4

    .line 515
    :cond_2
    iget-object v2, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v2}, Lio/legado/app/ui/main/MainActivity;->access$getIdRss$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_3

    instance-of v2, p1, Lio/legado/app/ui/main/rss/RssFragment;

    if-nez v2, :cond_4

    .line 516
    :cond_3
    iget-object v2, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v2}, Lio/legado/app/ui/main/MainActivity;->access$getIdMy$p(Lio/legado/app/ui/main/MainActivity;)I

    move-result v2

    if-ne v0, v2, :cond_5

    instance-of p1, p1, Lio/legado/app/ui/main/my/MyFragment;

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 539
    iget-object v0, p0, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/MainActivity;

    invoke-static {v0}, Lio/legado/app/ui/main/MainActivity;->access$getFragmentMap$p(Lio/legado/app/ui/main/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p2}, Lio/legado/app/ui/main/MainActivity$TabFragmentPageAdapter;->getId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
