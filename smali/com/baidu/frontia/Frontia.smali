.class public Lcom/baidu/frontia/Frontia;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Frontia"

.field private static b:Lcom/baidu/frontia/base/impl/FrontiaImpl; = null

.field private static final c:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrontiaVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getPush()Lcom/baidu/frontia/api/FrontiaPush;
    .locals 2

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/api/FrontiaPush;->newInstance(Landroid/content/Context;)Lcom/baidu/frontia/api/FrontiaPush;

    move-result-object v0

    sget-object v1, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v1}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/api/FrontiaPush;->init(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->get()Lcom/baidu/frontia/base/impl/FrontiaImpl;

    move-result-object v1

    sput-object v1, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    sget-object v1, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->setAppContext(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->setAppKey(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v0}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->start()V

    const-string v0, "frontia"

    const-string v1, "frontia init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/baidu/frontia/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSlientUpdateEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/baidu/frontia/Frontia;->b:Lcom/baidu/frontia/base/impl/FrontiaImpl;

    invoke-virtual {v0, p0}, Lcom/baidu/frontia/base/impl/FrontiaImpl;->setCheckForUpdatesEnabled(Z)V

    return-void
.end method
