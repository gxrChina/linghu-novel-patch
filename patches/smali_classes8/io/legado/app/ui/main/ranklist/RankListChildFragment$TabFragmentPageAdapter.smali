.class final Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "RankListChildFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legado/app/ui/main/ranklist/RankListChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabFragmentPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/legado/app/ui/main/ranklist/RankListChildFragment;


# direct methods
.method public constructor <init>(Lio/legado/app/ui/main/ranklist/RankListChildFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/ranklist/RankListChildFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# patched: category tabs (per gender) instead of the dead rank tabs.
# the API ignores the rank param but serves books per cate, so the tabs
# carry category names and the list page requests them as cate.
.method private getCategories()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/ranklist/RankListChildFragment;

    invoke-static {v0}, Lio/legado/app/ui/main/ranklist/RankListChildFragment;->access$getGender$p(Lio/legado/app/ui/main/ranklist/RankListChildFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "male"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "玄幻,武侠,仙侠,奇幻,科幻,都市,历史,军事,游戏,体育,灵异悬疑,同人"

    goto :goto_s

    :cond_f
    const-string v0, "现言,古言,幻言,纯爱,同人,校园"

    :goto_s
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->getCategories()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-direct {p0}, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->getCategories()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p1

    iget-object v0, p0, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->this$0:Lio/legado/app/ui/main/ranklist/RankListChildFragment;

    invoke-static {v0}, Lio/legado/app/ui/main/ranklist/RankListChildFragment;->access$getGender$p(Lio/legado/app/ui/main/ranklist/RankListChildFragment;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lio/legado/app/ui/main/ranklist/RankBookListFragment;->Companion:Lio/legado/app/ui/main/ranklist/RankBookListFragment$Companion;

    invoke-virtual {v0, v1, v2}, Lio/legado/app/ui/main/ranklist/RankBookListFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lio/legado/app/ui/main/ranklist/RankBookListFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lio/legado/app/ui/main/ranklist/RankListChildFragment$TabFragmentPageAdapter;->getCategories()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
