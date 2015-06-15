.class public Lcom/baidu/frontia/api/FrontiaDeepLink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/frontia/framework/IModule;


# static fields
.field private static final a:Ljava/lang/String; = "FrontiaDeepLink"

.field private static c:Lcom/baidu/frontia/api/FrontiaDeepLink;


# instance fields
.field private b:Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;

    invoke-direct {v0, p1}, Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaDeepLink;->b:Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/baidu/frontia/api/FrontiaDeepLink;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/frontia/api/FrontiaDeepLink;->c:Lcom/baidu/frontia/api/FrontiaDeepLink;

    if-nez v0, :cond_2

    const-string v1, "FrontiaDeepLink"

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/frontia/api/FrontiaDeepLink;->c:Lcom/baidu/frontia/api/FrontiaDeepLink;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/frontia/api/FrontiaDeepLink;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaDeepLink;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/frontia/api/FrontiaDeepLink;->c:Lcom/baidu/frontia/api/FrontiaDeepLink;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/baidu/frontia/api/FrontiaDeepLink;->c:Lcom/baidu/frontia/api/FrontiaDeepLink;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaDeepLink;->b:Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;->init(Ljava/lang/String;)V

    return-void
.end method

.method public launch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaDeepLink;->b:Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/module/deeplink/FrontiaDeepLinkImpl;->launch(Ljava/lang/String;)V

    return-void
.end method
