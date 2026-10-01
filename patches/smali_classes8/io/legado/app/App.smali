.class public final Lio/legado/app/App;
.super Landroid/app/Application;
.source "App.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 App.kt\nio/legado/app/App\n+ 2 SystemServices.kt\nsplitties/systemservices/SystemServicesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n161#2:303\n1#3:304\n*S KotlinDebug\n*F\n+ 1 App.kt\nio/legado/app/App\n*L\n235#1:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/legado/app/App;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "oldConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "",
        "attachBaseContext",
        "base",
        "Landroid/content/Context;",
        "onConfigurationChanged",
        "newConfig",
        "installGmsTlsProvider",
        "context",
        "createNotificationChannels",
        "initUpdate",
        "copyAssetGetFilePath",
        "",
        "assetsFilename",
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
.field private oldConfig:Landroid/content/res/Configuration;


# direct methods

.method public static synthetic $r8$lambda$FM3KeDfwhANYBBNtHw8Qw15pOjQ(Lcom/xuexiang/xupdate/entity/UpdateError;)V
    .locals 0

    invoke-static {p0}, Lio/legado/app/App;->initUpdate$lambda$5(Lcom/xuexiang/xupdate/entity/UpdateError;)V

    return-void
.end method


.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$installGmsTlsProvider(Lio/legado/app/App;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lio/legado/app/App;->installGmsTlsProvider(Landroid/content/Context;)V

    return-void
.end method

.method private final copyAssetGetFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "#DEBUG"

    const-string v1, "File already exists: "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 276
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/legado/app/App;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "getFilesDir(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 285
    :cond_2
    invoke-static {}, Lsplitties/init/AppCtxKt;->getAppCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    .line 286
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 289
    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x0

    .line 290
    invoke-virtual {v6, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 292
    :cond_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :try_start_3
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 293
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 285
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 294
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v3

    .line 286
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    .line 285
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error copying asset file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private final createNotificationChannels()V
    .locals 8

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m()V

    .line 203
    sget v0, Lio/legado/app/R$string;->action_download:I

    invoke-virtual {p0, v0}, Lio/legado/app/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "channel_download"

    const/4 v2, 0x3

    .line 201
    invoke-static {v1, v0, v2}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    invoke-static {v0, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 207
    invoke-static {v0, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const/4 v3, 0x0

    .line 208
    invoke-static {v0, v3, v3}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v4, 0x2

    .line 209
    invoke-static {v0, v4}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 212
    invoke-static {}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m()V

    .line 214
    sget v5, Lio/legado/app/R$string;->read_aloud:I

    invoke-virtual {p0, v5}, Lio/legado/app/App;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "channel_read_aloud"

    .line 212
    invoke-static {v6, v5, v2}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 217
    invoke-static {v5, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 218
    invoke-static {v5, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 219
    invoke-static {v5, v3, v3}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 220
    invoke-static {v5, v4}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 223
    invoke-static {}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m()V

    .line 225
    sget v6, Lio/legado/app/R$string;->web_service:I

    invoke-virtual {p0, v6}, Lio/legado/app/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "channel_web"

    .line 223
    invoke-static {v7, v6, v2}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 228
    invoke-static {v6, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 229
    invoke-static {v6, v1}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 230
    invoke-static {v6, v3, v3}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 231
    invoke-static {v6, v4}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    const-string v3, "notification"

    .line 303
    invoke-static {v3}, Lsplitties/systemservices/SystemServicesKt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-array v2, v2, [Landroid/app/NotificationChannel;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object v5, v2, v0

    aput-object v6, v2, v4

    .line 236
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-static {v3, v0}, Lio/legado/app/App$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void
.end method

.method private final initUpdate()V
    .locals 4

    .line 246
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 247
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 248
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 249
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3c

    .line 250
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;

    .line 253
    invoke-static {}, Lcom/xuexiang/xupdate/XUpdate;->get()Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->debug(Z)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->isWifiOnly(Z)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {v0, v2}, Lcom/xuexiang/xupdate/XUpdate;->isGet(Z)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->isAutoMode(Z)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 260
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/xuexiang/xupdate/utils/UpdateUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "versionCode"

    .line 258
    invoke-virtual {v0, v3, v2}, Lcom/xuexiang/xupdate/XUpdate;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    const-string v2, "appKey"

    .line 262
    invoke-virtual {p0}, Lio/legado/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xuexiang/xupdate/XUpdate;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    new-instance v2, Lio/legado/app/App$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lio/legado/app/App$$ExternalSyntheticLambda3;-><init>()V

    .line 263
    invoke-virtual {v0, v2}, Lcom/xuexiang/xupdate/XUpdate;->setOnUpdateFailureListener(Lcom/xuexiang/xupdate/listener/OnUpdateFailureListener;)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->supportSilentInstall(Z)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 269
    new-instance v1, Lio/legado/app/OKHttpUpdateHttpService;

    invoke-direct {v1}, Lio/legado/app/OKHttpUpdateHttpService;-><init>()V

    check-cast v1, Lcom/xuexiang/xupdate/proxy/IUpdateHttpService;

    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->setIUpdateHttpService(Lcom/xuexiang/xupdate/proxy/IUpdateHttpService;)Lcom/xuexiang/xupdate/XUpdate;

    move-result-object v0

    .line 270
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/XUpdate;->init(Landroid/app/Application;)V

    return-void
.end method

.method private static final initUpdate$lambda$5(Lcom/xuexiang/xupdate/entity/UpdateError;)V
    .locals 1

    const-string v0, "#DEBUG"

    .line 266
    invoke-virtual {p0}, Lcom/xuexiang/xupdate/entity/UpdateError;->getDetailMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final installGmsTlsProvider(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.common.security.ProviderInstallerImpl"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "insertProvider"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 189
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method




# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lio/legado/app/base/AppContextWrapper;->INSTANCE:Lio/legado/app/base/AppContextWrapper;

    invoke-virtual {v0, p1}, Lio/legado/app/base/AppContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    iget-object v0, p0, Lio/legado/app/App;->oldConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    const-string v0, "oldConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lio/legado/app/help/config/ThemeConfig;->INSTANCE:Lio/legado/app/help/config/ThemeConfig;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/legado/app/help/config/ThemeConfig;->applyDayNight(Landroid/content/Context;)V

    .line 168
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lio/legado/app/App;->oldConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public onCreate()V
    .locals 9

    .line 65
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lio/legado/app/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lio/legado/app/App;->oldConfig:Landroid/content/res/Configuration;

    .line 80

    .line 92
    const/4 v1, 0x1
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v3, 0x0
    # patched: signature-gated ad/remote-config block removed

    .line 115
    :cond_1
    new-instance v2, Lio/legado/app/help/CrashHandler;

    invoke-direct {v2, v0}, Lio/legado/app/help/CrashHandler;-><init>(Landroid/content/Context;)V

    .line 117
    sget-object v2, Lio/legado/app/help/http/Cronet;->INSTANCE:Lio/legado/app/help/http/Cronet;

    invoke-virtual {v2}, Lio/legado/app/help/http/Cronet;->preDownload()V

    .line 118
    invoke-direct {p0}, Lio/legado/app/App;->createNotificationChannels()V

    .line 119
    invoke-static {}, Lcom/jeremyliao/liveeventbus/LiveEventBus;->config()Lcom/jeremyliao/liveeventbus/core/Config;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Lcom/jeremyliao/liveeventbus/core/Config;->lifecycleObserverAlwaysActive(Z)Lcom/jeremyliao/liveeventbus/core/Config;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v3}, Lcom/jeremyliao/liveeventbus/core/Config;->autoClear(Z)Lcom/jeremyliao/liveeventbus/core/Config;

    .line 122
    sget-object v1, Lio/legado/app/help/config/ThemeConfig;->INSTANCE:Lio/legado/app/help/config/ThemeConfig;

    invoke-virtual {v1, v0}, Lio/legado/app/help/config/ThemeConfig;->applyDayNight(Landroid/content/Context;)V

    .line 123
    sget-object v1, Lio/legado/app/help/LifecycleHelp;->INSTANCE:Lio/legado/app/help/LifecycleHelp;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v1}, Lio/legado/app/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 124
    invoke-static {v0}, Lio/legado/app/utils/ContextExtensionsKt;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lio/legado/app/help/config/AppConfig;->INSTANCE:Lio/legado/app/help/config/AppConfig;

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    sget-object v0, Lio/legado/app/help/DefaultData;->INSTANCE:Lio/legado/app/help/DefaultData;

    invoke-virtual {v0}, Lio/legado/app/help/DefaultData;->upVersion()V

    .line 126
    sget-object v1, Lio/legado/app/help/coroutine/Coroutine;->Companion:Lio/legado/app/help/coroutine/Coroutine$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lio/legado/app/App$onCreate$3;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lio/legado/app/App$onCreate$3;-><init>(Lio/legado/app/App;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lio/legado/app/help/coroutine/Coroutine$Companion;->async$default(Lio/legado/app/help/coroutine/Coroutine$Companion;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/legado/app/help/coroutine/Coroutine;

    .line 155
    invoke-direct {p0}, Lio/legado/app/App;->initUpdate()V

    return-void
.end method
