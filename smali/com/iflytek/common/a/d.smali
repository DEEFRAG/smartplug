.class public Lcom/iflytek/common/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/common/a/d;


# instance fields
.field private b:Lcom/iflytek/common/c/d;

.field private c:Lcom/iflytek/common/a/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/common/a/e;

.field private f:Lcom/iflytek/common/c/a;

.field private g:Lcom/iflytek/common/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/a/d;->c:Lcom/iflytek/common/a/a;

    new-instance v0, Lcom/iflytek/common/a/g;

    invoke-direct {v0, p0}, Lcom/iflytek/common/a/g;-><init>(Lcom/iflytek/common/a/d;)V

    iput-object v0, p0, Lcom/iflytek/common/a/d;->g:Lcom/iflytek/common/a/b;

    new-instance v0, Lcom/iflytek/common/c/d;

    invoke-direct {v0, p1}, Lcom/iflytek/common/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/common/a/d;->b:Lcom/iflytek/common/c/d;

    iput-object p1, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/common/c/a;

    invoke-direct {v0, p1}, Lcom/iflytek/common/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/common/a/d;->f:Lcom/iflytek/common/c/a;

    new-instance v0, Lcom/iflytek/common/a/e;

    iget-object v1, p0, Lcom/iflytek/common/a/d;->b:Lcom/iflytek/common/c/d;

    invoke-direct {v0, v1}, Lcom/iflytek/common/a/e;-><init>(Lcom/iflytek/common/c/d;)V

    iput-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load settings: pkgRun="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " periodRun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " periodUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/common/a/d;
    .locals 2

    const-class v1, Lcom/iflytek/common/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/common/a/d;->a:Lcom/iflytek/common/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/common/a/d;

    invoke-direct {v0, p0}, Lcom/iflytek/common/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/common/a/d;->a:Lcom/iflytek/common/a/d;

    :cond_0
    sget-object v0, Lcom/iflytek/common/a/d;->a:Lcom/iflytek/common/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/common/a/d;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/a/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/a/e;->c(J)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    const-string v1, "get config success"

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/common/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/a/d;->c:Lcom/iflytek/common/a/a;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get config error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "LaunchSettings"

    const-string v1, "loadJson empty."

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v0, "updateperiod"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "launch"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "runpackage"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v6, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "runperiod"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0, v6}, Lcom/iflytek/common/a/e;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/common/a/e;->a(J)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0, v7, v8}, Lcom/iflytek/common/a/e;->b(J)V

    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "parse json updateperiod:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " runperiod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " runpackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse json error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/common/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/iflytek/common/a/d;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&p="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/common/a/d;->f:Lcom/iflytek/common/c/a;

    invoke-virtual {v0}, Lcom/iflytek/common/c/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/a/d;->f:Lcom/iflytek/common/c/a;

    invoke-virtual {v1}, Lcom/iflytek/common/c/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v1}, Lcom/iflytek/common/a/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v0, "null"

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ua="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",appid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sdkver=2.0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/c/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v2

    :goto_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_3

    aget-char v4, v3, v0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    add-int/2addr v5, v0

    aget-char v5, v3, v5

    aput-char v5, v3, v0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    add-int/2addr v5, v0

    aput-char v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_4

    aget-char v2, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0}, Lcom/iflytek/common/a/e;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v3}, Lcom/iflytek/common/a/e;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/a/e;->c(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/iflytek/common/a/d;->c:Lcom/iflytek/common/a/a;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://hxqd.openspeech.cn/launchconfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/common/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/common/a/a;

    iget-object v2, p0, Lcom/iflytek/common/a/d;->g:Lcom/iflytek/common/a/b;

    invoke-direct {v1, v0, v2}, Lcom/iflytek/common/a/a;-><init>(Ljava/lang/String;Lcom/iflytek/common/a/b;)V

    iput-object v1, p0, Lcom/iflytek/common/a/d;->c:Lcom/iflytek/common/a/a;

    iget-object v1, p0, Lcom/iflytek/common/a/d;->c:Lcom/iflytek/common/a/a;

    invoke-virtual {v1}, Lcom/iflytek/common/a/a;->start()V

    iget-object v1, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    const-string v2, "check update start get config "

    invoke-static {v1, v2}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "LaunchSettings"

    const-string v1, "mGetThread running."

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check update interval="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/a/e;->d(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "appid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0, p2}, Lcom/iflytek/common/a/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LaunchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unkown key ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v1}, Lcom/iflytek/common/a/e;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v1}, Lcom/iflytek/common/a/e;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b()Z
    .locals 7

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0}, Lcom/iflytek/common/a/e;->e()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v3}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/a/e;->d(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v3}, Lcom/iflytek/common/a/e;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v3}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v3}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/a/d;->d:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check launch interval="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " period="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v2}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/iflytek/common/a/d;->e:Lcom/iflytek/common/a/e;

    invoke-virtual {v0}, Lcom/iflytek/common/a/e;->a()J

    move-result-wide v0

    return-wide v0
.end method
