.class public Lio/legado/app/ad/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legado/app/ad/AdManager$OpenAdSeatManager;,
        Lio/legado/app/ad/AdManager$AD_TYPE;,
        Lio/legado/app/ad/AdManager$ADConfigBean;,
        Lio/legado/app/ad/AdManager$PalformsBean;,
        Lio/legado/app/ad/AdManager$AdScopeAdplform;,
        Lio/legado/app/ad/AdManager$YouTuiAdplform;,
        Lio/legado/app/ad/AdManager$AdFunLinkAdplform;,
        Lio/legado/app/ad/AdManager$AdScope5Adplform;,
        Lio/legado/app/ad/AdManager$AdPlform;,
        Lio/legado/app/ad/AdManager$AdidsBean;,
        Lio/legado/app/ad/AdManager$AdSeat;,
        Lio/legado/app/ad/AdManager$OpenAdSeat;,
        Lio/legado/app/ad/AdManager$AdPlformInitCallBack;,
        Lio/legado/app/ad/AdManager$OpenAdListener;,
        Lio/legado/app/ad/AdManager$AdSeatManagerBase;,
        Lio/legado/app/ad/AdManager$OpenAdListenerInternal;,
        Lio/legado/app/ad/AdManager$RangeEx;
    }
.end annotation


# static fields
.field private static instance:Lio/legado/app/ad/AdManager;


# instance fields
.field private DEF_CONFIG:Ljava/lang/String;

.field adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

.field allowpalforms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public app:Landroid/app/Application;

.field public isDebug:Z

.field public isToast:Z

.field public isUseDefConfig:Z

.field isinit:Z

.field lastInitTime:J

.field public moment:I

.field public openBackGroundTime:J

.field public openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

.field public openTimeOut:I

.field public times:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$fgettoast(Lio/legado/app/ad/AdManager;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lio/legado/app/ad/AdManager;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtoast(Lio/legado/app/ad/AdManager;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lio/legado/app/ad/AdManager;->toast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lio/legado/app/ad/AdManager;->DEF_CONFIG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lio/legado/app/ad/AdManager;->isDebug:Z

    .line 57
    iput-boolean v0, p0, Lio/legado/app/ad/AdManager;->isUseDefConfig:Z

    .line 58
    iput-boolean v0, p0, Lio/legado/app/ad/AdManager;->isToast:Z

    .line 61
    iput-boolean v0, p0, Lio/legado/app/ad/AdManager;->isinit:Z

    .line 64
    new-instance v0, Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    invoke-direct {v0, p0}, Lio/legado/app/ad/AdManager$OpenAdSeatManager;-><init>(Lio/legado/app/ad/AdManager;)V

    iput-object v0, p0, Lio/legado/app/ad/AdManager;->openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    const/16 v0, 0x1f40

    .line 66
    iput v0, p0, Lio/legado/app/ad/AdManager;->openTimeOut:I

    const-wide/32 v0, 0xea60

    .line 67
    iput-wide v0, p0, Lio/legado/app/ad/AdManager;->openBackGroundTime:J

    const/16 v0, 0x64

    .line 68
    iput v0, p0, Lio/legado/app/ad/AdManager;->times:I

    const/16 v0, 0x3c

    .line 70
    iput v0, p0, Lio/legado/app/ad/AdManager;->moment:I

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/legado/app/ad/AdManager;->allowpalforms:Ljava/util/HashSet;

    return-void
.end method

.method public static GetAdTypeByString(Ljava/lang/String;)Lio/legado/app/ad/AdManager$AD_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strtype"
        }
    .end annotation

    const-string v0, "open"

    .line 125
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    return-object p0

    :cond_0
    const-string v0, "stream"

    .line 127
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object p0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_STREAM:Lio/legado/app/ad/AdManager$AD_TYPE;

    return-object p0

    :cond_1
    const-string v0, "rewardvideo"

    .line 129
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 130
    sget-object p0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_REWARDVIDEO:Lio/legado/app/ad/AdManager$AD_TYPE;

    return-object p0

    .line 131
    :cond_2
    sget-object p0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_INVALID:Lio/legado/app/ad/AdManager$AD_TYPE;

    return-object p0
.end method

.method public static GetAdTypeString(Lio/legado/app/ad/AdManager$AD_TYPE;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adtype"
        }
    .end annotation

    .line 111
    sget-object v0, Lio/legado/app/ad/AdManager$3;->$SwitchMap$io$legado$app$ad$AdManager$AD_TYPE:[I

    invoke-virtual {p0}, Lio/legado/app/ad/AdManager$AD_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "invalid"

    return-object p0

    :cond_0
    const-string p0, "rewardvideo"

    return-object p0

    :cond_1
    const-string p0, "stream"

    return-object p0

    :cond_2
    const-string p0, "open"

    return-object p0
.end method

.method public static getInstance(Landroid/app/Application;)Lio/legado/app/ad/AdManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 80
    sget-object v0, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lio/legado/app/ad/AdManager;

    invoke-direct {v0}, Lio/legado/app/ad/AdManager;-><init>()V

    sput-object v0, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    .line 82
    iput-object p0, v0, Lio/legado/app/ad/AdManager;->app:Landroid/app/Application;

    .line 84
    :cond_0
    sget-object p0, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    return-object p0
.end method


# virtual methods
.method public GetTcStr(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tc"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string p1, "tc0"

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1f4

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-string p1, "tc0_500"

    return-object p1

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-string p1, "tc500_1000"

    return-object p1

    :cond_2
    const-wide/16 v0, 0x5dc

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-string p1, "tc1000_1500"

    return-object p1

    :cond_3
    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-string p1, "tc1500_2000"

    return-object p1

    :cond_4
    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    const-string p1, "tc2000_3000"

    return-object p1

    :cond_5
    const-wide/16 v0, 0x1388

    cmp-long p1, p1, v0

    if-gez p1, :cond_6

    const-string p1, "3000_5000"

    return-object p1

    :cond_6
    const-string p1, "tc5000"

    return-object p1
.end method

.method public StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adtype",
            "event"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/legado/app/ad/AdManager;->GetAdTypeString(Lio/legado/app/ad/AdManager$AD_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lio/legado/app/ad/AdManager;->app:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adtype",
            "event",
            "tc"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/legado/app/ad/AdManager;->GetAdTypeString(Lio/legado/app/ad/AdManager$AD_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Lio/legado/app/ad/AdManager;->GetTcStr(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lio/legado/app/ad/AdManager;->app:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adtype",
            "plaform",
            "event"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/legado/app/ad/AdManager;->GetAdTypeString(Lio/legado/app/ad/AdManager$AD_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lio/legado/app/ad/AdManager;->app:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adtype",
            "plaform",
            "event",
            "tc"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/legado/app/ad/AdManager;->GetAdTypeString(Lio/legado/app/ad/AdManager$AD_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Lio/legado/app/ad/AdManager;->GetTcStr(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lio/legado/app/ad/AdManager;->app:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDefConfig()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lio/legado/app/ad/AdManager;->DEF_CONFIG:Ljava/lang/String;

    return-object v0
.end method

.method public getMoment()I
    .locals 1

    .line 98
    iget v0, p0, Lio/legado/app/ad/AdManager;->moment:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    .line 94
    iget v0, p0, Lio/legado/app/ad/AdManager;->times:I

    return v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)Lio/legado/app/ad/AdManager;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "app",
            "body"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "adscope"

    const-string v4, "*"

    const-string v0, "UTF-8"

    const-string v5, "adcfg"

    const-string v6, "channel = "

    .line 729
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/legado/app/ad/AdManager;->isInitatlize()Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v1

    .line 731
    :cond_0
    iget-boolean v7, v1, Lio/legado/app/ad/AdManager;->isUseDefConfig:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 733
    iget-object v0, v1, Lio/legado/app/ad/AdManager;->DEF_CONFIG:Ljava/lang/String;

    const-string v5, "1234567890123456"

    invoke-static {v0, v5}, Lio/legado/app/utils/AesEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 735
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_3

    .line 738
    :try_start_1
    invoke-virtual {v2, v5, v8}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 739
    iget-object v9, v1, Lio/legado/app/ad/AdManager;->DEF_CONFIG:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 740
    invoke-interface {v7, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 741
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 743
    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 744
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move-object/from16 v7, p2

    :goto_0
    move-object v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    .line 747
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object/from16 v0, p2

    .line 751
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v1

    .line 753
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 754
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$OpenAdSeatManager;->reset()V

    .line 757
    :cond_5
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lio/legado/app/ad/AdManager$1;

    invoke-direct {v7, v1}, Lio/legado/app/ad/AdManager$1;-><init>(Lio/legado/app/ad/AdManager;)V

    .line 758
    invoke-virtual {v7}, Lio/legado/app/ad/AdManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 757
    invoke-virtual {v5, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/legado/app/ad/AdManager$ADConfigBean;

    iput-object v0, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    .line 760
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 762
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_1d

    .line 764
    invoke-static {v5}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetopenbackgroundtime(Lio/legado/app/ad/AdManager$ADConfigBean;)I

    move-result v5

    int-to-long v10, v5

    iput-wide v10, v1, Lio/legado/app/ad/AdManager;->openBackGroundTime:J

    .line 765
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    invoke-static {v5}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetenable(Lio/legado/app/ad/AdManager$ADConfigBean;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 766
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    invoke-static {v5}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetopentimeout(Lio/legado/app/ad/AdManager$ADConfigBean;)I

    move-result v5

    iput v5, v1, Lio/legado/app/ad/AdManager;->openTimeOut:I

    .line 767
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    iget v5, v5, Lio/legado/app/ad/AdManager$ADConfigBean;->times:I

    iput v5, v1, Lio/legado/app/ad/AdManager;->times:I

    .line 768
    iget-object v5, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    iget v5, v5, Lio/legado/app/ad/AdManager$ADConfigBean;->moment:I

    iput v5, v1, Lio/legado/app/ad/AdManager;->moment:I

    .line 770
    invoke-static/range {p1 .. p1}, Lio/legado/app/ad/ADUtils;->getAPKChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 771
    invoke-static/range {p1 .. p1}, Lio/legado/app/ad/ADUtils;->getAPKFirstChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 772
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", first channel "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lio/legado/app/ad/AdManager;->toastShort(Ljava/lang/String;)V

    .line 775
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    invoke-static {v6}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetexcludeChannel(Lio/legado/app/ad/AdManager$ADConfigBean;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 776
    iget-object v6, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    invoke-static {v6}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetexcludeChannel(Lio/legado/app/ad/AdManager$ADConfigBean;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v11, v8

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 777
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    :goto_3
    move v8, v9

    goto :goto_4

    .line 781
    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 782
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 783
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_3

    .line 788
    :cond_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_a
    move v11, v9

    goto :goto_2

    :cond_b
    move v8, v11

    :cond_c
    :goto_4
    if-nez v8, :cond_1d

    .line 794
    iget-object v4, v1, Lio/legado/app/ad/AdManager;->adConfigBean:Lio/legado/app/ad/AdManager$ADConfigBean;

    invoke-static {v4}, Lio/legado/app/ad/AdManager$ADConfigBean;->-$$Nest$fgetpalforms(Lio/legado/app/ad/AdManager$ADConfigBean;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/legado/app/ad/AdManager$PalformsBean;

    if-nez v5, :cond_e

    goto :goto_5

    .line 803
    :cond_e
    invoke-static {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->-$$Nest$fgetcreatetime(Lio/legado/app/ad/AdManager$PalformsBean;)J

    move-result-wide v10

    const-wide/32 v12, 0x134d6fb    # 9.9999494E-317

    cmp-long v6, v10, v12

    if-ltz v6, :cond_f

    .line 805
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->isEnable20240123()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_5

    .line 808
    :cond_f
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->isEnable()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_5

    .line 812
    :cond_10
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v8, "adscope5"

    const-string v10, "adfunlink"

    const-string v11, "youtui"

    if-eqz v6, :cond_11

    .line 813
    :try_start_3
    new-instance v6, Lio/legado/app/ad/AdManager$AdScopeAdplform;

    invoke-direct {v6}, Lio/legado/app/ad/AdManager$AdScopeAdplform;-><init>()V

    goto :goto_6

    .line 814
    :cond_11
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 815
    new-instance v6, Lio/legado/app/ad/AdManager$YouTuiAdplform;

    invoke-direct {v6}, Lio/legado/app/ad/AdManager$YouTuiAdplform;-><init>()V

    goto :goto_6

    .line 816
    :cond_12
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 817
    new-instance v6, Lio/legado/app/ad/AdManager$AdFunLinkAdplform;

    invoke-direct {v6}, Lio/legado/app/ad/AdManager$AdFunLinkAdplform;-><init>()V

    goto :goto_6

    .line 818
    :cond_13
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 819
    new-instance v6, Lio/legado/app/ad/AdManager$AdScope5Adplform;

    invoke-direct {v6}, Lio/legado/app/ad/AdManager$AdScope5Adplform;-><init>()V

    goto :goto_6

    :cond_14
    move-object v6, v7

    :goto_6
    if-nez v6, :cond_15

    goto :goto_5

    .line 824
    :cond_15
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getAppkey()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lio/legado/app/ad/AdManager$AdPlform;->appKey:Ljava/lang/String;

    .line 825
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getAppid()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lio/legado/app/ad/AdManager$AdPlform;->appid:Ljava/lang/String;

    .line 826
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    .line 827
    invoke-virtual {v5}, Lio/legado/app/ad/AdManager$PalformsBean;->getAdsets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/legado/app/ad/AdManager$AdidsBean;

    .line 828
    invoke-virtual {v12}, Lio/legado/app/ad/AdManager$AdidsBean;->getType()Ljava/lang/String;

    move-result-object v13

    .line 829
    invoke-static {v13}, Lio/legado/app/ad/AdManager;->GetAdTypeByString(Ljava/lang/String;)Lio/legado/app/ad/AdManager$AD_TYPE;

    move-result-object v13

    .line 831
    invoke-virtual {v12}, Lio/legado/app/ad/AdManager$AdidsBean;->isEnable()Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_7

    .line 835
    :cond_16
    iget-object v14, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 836
    sget-object v14, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    if-ne v13, v14, :cond_1a

    .line 837
    new-instance v14, Lio/legado/app/ad/AdScopeAdSeat$OpenAdSeat;

    invoke-direct {v14}, Lio/legado/app/ad/AdScopeAdSeat$OpenAdSeat;-><init>()V

    goto :goto_8

    .line 839
    :cond_17
    iget-object v14, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    invoke-static {v14, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 840
    sget-object v14, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    if-ne v13, v14, :cond_1a

    .line 841
    new-instance v14, Lio/legado/app/ad/YouTuiAdSeat$OpenAdSeat;

    invoke-direct {v14}, Lio/legado/app/ad/YouTuiAdSeat$OpenAdSeat;-><init>()V

    goto :goto_8

    .line 842
    :cond_18
    iget-object v14, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 843
    sget-object v14, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    if-ne v13, v14, :cond_1a

    .line 844
    new-instance v14, Lio/legado/app/ad/AdFunLinkAdSeat$OpenAdSeat;

    invoke-direct {v14}, Lio/legado/app/ad/AdFunLinkAdSeat$OpenAdSeat;-><init>()V

    goto :goto_8

    .line 845
    :cond_19
    iget-object v14, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    invoke-static {v14, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 846
    sget-object v14, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    if-ne v13, v14, :cond_1a

    .line 847
    new-instance v14, Lio/legado/app/ad/AdScope5AdSeat$OpenAdSeat;

    invoke-direct {v14}, Lio/legado/app/ad/AdScope5AdSeat$OpenAdSeat;-><init>()V

    goto :goto_8

    :cond_1a
    move-object v14, v7

    :goto_8
    if-eqz v14, :cond_1c

    .line 851
    iput-object v6, v14, Lio/legado/app/ad/AdManager$AdSeat;->adPlform:Lio/legado/app/ad/AdManager$AdPlform;

    move-object v15, v10

    .line 852
    invoke-virtual {v12}, Lio/legado/app/ad/AdManager$AdidsBean;->getTimeOut()J

    move-result-wide v9

    iput-wide v9, v14, Lio/legado/app/ad/AdManager$AdSeat;->timeout:J

    .line 853
    invoke-virtual {v12}, Lio/legado/app/ad/AdManager$AdidsBean;->getAdid()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v14, Lio/legado/app/ad/AdManager$AdSeat;->adid:Ljava/lang/String;

    .line 854
    invoke-virtual {v12}, Lio/legado/app/ad/AdManager$AdidsBean;->getWeight()I

    move-result v9

    iput v9, v14, Lio/legado/app/ad/AdManager$AdSeat;->weight:I

    .line 856
    sget-object v9, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    if-ne v13, v9, :cond_1b

    .line 857
    move-object v9, v14

    check-cast v9, Lio/legado/app/ad/AdManager$OpenAdSeat;

    iget-object v10, v1, Lio/legado/app/ad/AdManager;->openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    iput-object v10, v9, Lio/legado/app/ad/AdManager$OpenAdSeat;->adseatmgr:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    .line 858
    iget-object v9, v1, Lio/legado/app/ad/AdManager;->openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    iget-object v9, v9, Lio/legado/app/ad/AdManager$OpenAdSeatManager;->listAdSeat:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_1b
    iget-object v9, v6, Lio/legado/app/ad/AdManager$AdPlform;->listAdSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1c
    move-object v15, v10

    .line 863
    :goto_9
    iget-object v9, v6, Lio/legado/app/ad/AdManager$AdPlform;->strName:Ljava/lang/String;

    invoke-virtual {v0, v9, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v15

    const/4 v9, 0x1

    goto/16 :goto_7

    .line 871
    :cond_1d
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 872
    :cond_1e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 874
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/legado/app/ad/AdManager$AdPlform;

    .line 875
    invoke-virtual {v0}, Lio/legado/app/ad/AdManager$AdPlform;->needInit()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v4, :cond_1e

    .line 879
    :try_start_4
    invoke-virtual {v0, v2, v7}, Lio/legado/app/ad/AdManager$AdPlform;->init(Landroid/app/Application;Lio/legado/app/ad/AdManager$AdPlformInitCallBack;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 883
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_1f
    const/4 v2, 0x1

    .line 888
    iput-boolean v2, v1, Lio/legado/app/ad/AdManager;->isinit:Z

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lio/legado/app/ad/AdManager;->lastInitTime:J

    const-string v0, "AdManager init success!"

    .line 891
    invoke-virtual {v1, v0}, Lio/legado/app/ad/AdManager;->toastShort(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    .line 894
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AdManager init failed!"

    .line 895
    invoke-virtual {v1, v0}, Lio/legado/app/ad/AdManager;->toastShort(Ljava/lang/String;)V

    :goto_b
    return-object v1
.end method

.method public isDebug()Z
    .locals 1

    .line 945
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isDebug:Z

    return v0
.end method

.method public isInitatlize()Z
    .locals 4

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/legado/app/ad/AdManager;->lastInitTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 924
    :cond_0
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isinit:Z

    return v0
.end method

.method public isToast()Z
    .locals 1

    .line 967
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isToast:Z

    return v0
.end method

.method public isUseDefConfig()Z
    .locals 1

    .line 956
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isUseDefConfig:Z

    return v0
.end method

.method public needShowAdWhenForceground(J)Z
    .locals 1

    # patched: foreground ad disabled in this build
    const/4 v0, 0x0

    return v0
.end method

.method public setAdPalforms(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1004
    iput-object p1, p0, Lio/legado/app/ad/AdManager;->allowpalforms:Ljava/util/HashSet;

    return-void
.end method

.method public setDebug(Z)Lio/legado/app/ad/AdManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 939
    iput-boolean p1, p0, Lio/legado/app/ad/AdManager;->isDebug:Z

    .line 940
    sget-object p1, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    return-object p1
.end method

.method public setDefConfig(Ljava/lang/String;)Lio/legado/app/ad/AdManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 928
    iput-object p1, p0, Lio/legado/app/ad/AdManager;->DEF_CONFIG:Ljava/lang/String;

    .line 929
    sget-object p1, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    return-object p1
.end method

.method public setToast(Z)Lio/legado/app/ad/AdManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 961
    iput-boolean p1, p0, Lio/legado/app/ad/AdManager;->isToast:Z

    .line 962
    sget-object p1, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    return-object p1
.end method

.method public setUseDefConfig(Z)Lio/legado/app/ad/AdManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 950
    iput-boolean p1, p0, Lio/legado/app/ad/AdManager;->isUseDefConfig:Z

    .line 951
    sget-object p1, Lio/legado/app/ad/AdManager;->instance:Lio/legado/app/ad/AdManager;

    return-object p1
.end method

.method public showOpenAD(Landroid/app/Activity;Landroid/view/ViewGroup;Lio/legado/app/ad/AdManager$OpenAdListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "adListener"
        }
    .end annotation

    .line 903
    :try_start_0
    sget-object v0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    const-string v1, "pv"

    invoke-virtual {p0, v0, v1}, Lio/legado/app/ad/AdManager;->StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    invoke-virtual {p0}, Lio/legado/app/ad/AdManager;->isInitatlize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/legado/app/ad/AdManager;->init(Landroid/app/Application;Ljava/lang/String;)Lio/legado/app/ad/AdManager;

    .line 908
    :cond_0
    invoke-virtual {p0}, Lio/legado/app/ad/AdManager;->isInitatlize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    invoke-interface {p3}, Lio/legado/app/ad/AdManager$OpenAdListener;->onExit()V

    return-void

    .line 912
    :cond_1
    sget-object v0, Lio/legado/app/ad/AdManager$AD_TYPE;->AD_TYPE_OPEN:Lio/legado/app/ad/AdManager$AD_TYPE;

    const-string v1, "pvr"

    invoke-virtual {p0, v0, v1}, Lio/legado/app/ad/AdManager;->StatStr(Lio/legado/app/ad/AdManager$AD_TYPE;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lio/legado/app/ad/AdManager;->openManager:Lio/legado/app/ad/AdManager$OpenAdSeatManager;

    invoke-virtual {v0, p1, p2, p3}, Lio/legado/app/ad/AdManager$OpenAdSeatManager;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lio/legado/app/ad/AdManager$OpenAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 915
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 916
    invoke-interface {p3}, Lio/legado/app/ad/AdManager$OpenAdListener;->onExit()V

    :goto_0
    return-void
.end method

.method public syncADCfg(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1065
    :cond_0
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 1066
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lio/legado/app/ad/AdManager$1HttpCallBack;

    const-string v1, "adcfg"

    invoke-direct {v0, p0, v1}, Lio/legado/app/ad/AdManager$1HttpCallBack;-><init>(Lio/legado/app/ad/AdManager;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public toastShort(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 971
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Reader"

    .line 972
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-boolean v0, p0, Lio/legado/app/ad/AdManager;->isToast:Z

    if-eqz v0, :cond_1

    .line 975
    new-instance v0, Lio/legado/app/ad/AdManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/legado/app/ad/AdManager$2;-><init>(Lio/legado/app/ad/AdManager;Landroid/os/Looper;Ljava/lang/String;)V

    const/16 p1, 0xd96

    .line 991
    invoke-virtual {v0, p1}, Lio/legado/app/ad/AdManager$2;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public toastShort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "msg"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/legado/app/ad/AdManager;->toastShort(Ljava/lang/String;)V

    return-void
.end method

.method public toastShort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "t",
            "msg"
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/legado/app/ad/AdManager;->toastShort(Ljava/lang/String;)V

    return-void
.end method
