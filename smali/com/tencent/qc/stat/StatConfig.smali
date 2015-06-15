.class public Lcom/tencent/qc/stat/StatConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Lcom/tencent/qc/stat/r;

.field static b:Lcom/tencent/qc/stat/r;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field public static e:Z

.field private static f:Lcom/tencent/qc/stat/common/StatLogger;

.field private static g:Lcom/tencent/qc/stat/StatReportStrategy;

.field private static h:Z

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:I

.field private static s:I

.field private static t:Z

.field private static u:J

.field private static v:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x400

    const/16 v3, 0x1e

    const/4 v2, 0x1

    .line 24
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    .line 62
    new-instance v0, Lcom/tencent/qc/stat/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/qc/stat/r;-><init>(I)V

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    .line 67
    new-instance v0, Lcom/tencent/qc/stat/r;

    invoke-direct {v0, v2}, Lcom/tencent/qc/stat/r;-><init>(I)V

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    .line 73
    sget-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->f:Lcom/tencent/qc/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->g:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 113
    sput-boolean v2, Lcom/tencent/qc/stat/StatConfig;->h:Z

    .line 135
    const/16 v0, 0x7530

    sput v0, Lcom/tencent/qc/stat/StatConfig;->i:I

    .line 162
    sput v4, Lcom/tencent/qc/stat/StatConfig;->j:I

    .line 163
    sput v3, Lcom/tencent/qc/stat/StatConfig;->k:I

    .line 164
    const/4 v0, 0x3

    sput v0, Lcom/tencent/qc/stat/StatConfig;->l:I

    .line 166
    sput v3, Lcom/tencent/qc/stat/StatConfig;->m:I

    .line 392
    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->c:Ljava/lang/String;

    .line 421
    sput-object v5, Lcom/tencent/qc/stat/StatConfig;->n:Ljava/lang/String;

    .line 422
    sput-object v5, Lcom/tencent/qc/stat/StatConfig;->o:Ljava/lang/String;

    .line 521
    const-string v0, ""

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->d:Ljava/lang/String;

    .line 545
    const/16 v0, 0x5a0

    sput v0, Lcom/tencent/qc/stat/StatConfig;->r:I

    .line 569
    sput v4, Lcom/tencent/qc/stat/StatConfig;->s:I

    .line 594
    sput-boolean v2, Lcom/tencent/qc/stat/StatConfig;->t:Z

    .line 616
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/qc/stat/StatConfig;->u:J

    .line 617
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/qc/stat/StatConfig;->v:J

    .line 649
    sput-boolean v2, Lcom/tencent/qc/stat/StatConfig;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a()Lcom/tencent/qc/stat/StatReportStrategy;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->g:Lcom/tencent/qc/stat/StatReportStrategy;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    .line 473
    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    .line 470
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 471
    :cond_1
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 473
    :cond_2
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 155
    const/16 v0, 0x3e8

    const v1, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/tencent/qc/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    sput p0, Lcom/tencent/qc/stat/StatConfig;->i:I

    goto :goto_0
.end method

.method public static a(Lcom/tencent/qc/stat/StatReportStrategy;)V
    .locals 3

    .prologue
    .line 91
    sput-object p0, Lcom/tencent/qc/stat/StatConfig;->g:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 92
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change to SendStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qc/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method static a(Lcom/tencent/qc/stat/r;)V
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/tencent/qc/stat/r;->a:I

    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v1, v1, Lcom/tencent/qc/stat/r;->a:I

    if-ne v0, v1, :cond_1

    .line 383
    sput-object p0, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    .line 384
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget-object v0, v0, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->b(Lorg/json/JSONObject;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v0, p0, Lcom/tencent/qc/stat/r;->a:I

    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    iget v1, v1, Lcom/tencent/qc/stat/r;->a:I

    if-ne v0, v1, :cond_0

    .line 386
    sput-object p0, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    goto :goto_0
.end method

.method static a(Lcom/tencent/qc/stat/r;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qc/stat/r;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 337
    :cond_2
    :try_start_1
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 340
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    iput-object v2, p0, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    goto :goto_0

    .line 343
    :cond_3
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "m"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/r;->c:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_4
    invoke-static {}, Lcom/tencent/qc/stat/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_5

    .line 350
    invoke-virtual {v0, p0}, Lcom/tencent/qc/stat/StatStore;->a(Lcom/tencent/qc/stat/r;)V

    .line 352
    :cond_5
    iget v0, p0, Lcom/tencent/qc/stat/r;->a:I

    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v1, v1, Lcom/tencent/qc/stat/r;->a:I

    if-ne v0, v1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->b(Lorg/json/JSONObject;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 483
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "The length of appkey cann\'t exceed 256 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    sput-object p0, Lcom/tencent/qc/stat/StatConfig;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 292
    .line 294
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 299
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    invoke-static {v2, v0}, Lcom/tencent/qc/stat/StatConfig;->a(Lcom/tencent/qc/stat/r;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V

    .line 319
    :cond_1
    return-void

    .line 300
    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 303
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    invoke-static {v2, v0}, Lcom/tencent/qc/stat/StatConfig;->a(Lcom/tencent/qc/stat/r;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 304
    :cond_3
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-static {v0}, Lcom/tencent/qc/stat/StatReportStrategy;->a(I)Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->g:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 310
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change to ReportStrategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qc/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 129
    sput-boolean p0, Lcom/tencent/qc/stat/StatConfig;->h:Z

    .line 130
    if-nez p0, :cond_0

    .line 131
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->c(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method static a(III)Z
    .locals 1

    .prologue
    .line 53
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    .line 505
    :goto_0
    return-object v0

    .line 501
    :cond_0
    invoke-static {p0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    .line 502
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 503
    :cond_1
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 505
    :cond_2
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 554
    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lcom/tencent/qc/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 559
    :goto_0
    return-void

    .line 558
    :cond_0
    sput p0, Lcom/tencent/qc/stat/StatConfig;->r:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 515
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    sput-object p0, Lcom/tencent/qc/stat/StatConfig;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    invoke-static {v0}, Lcom/tencent/qc/stat/StatReportStrategy;->a(I)Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Lcom/tencent/qc/stat/StatReportStrategy;)V

    .line 374
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change to ReportStrategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qc/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 613
    sput-boolean p0, Lcom/tencent/qc/stat/StatConfig;->t:Z

    .line 614
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/common/StatLogger;->a()Z

    move-result v0

    return v0
.end method

.method static c(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 399
    :try_start_0
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernateVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0.6.12"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    .line 402
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b(Ljava/lang/String;)J

    move-result-wide v1

    .line 403
    const-string v3, "0.6.12"

    invoke-static {v3}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b(Ljava/lang/String;)J

    move-result-wide v3

    .line 406
    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    .line 410
    invoke-static {}, Lcom/tencent/qc/stat/l;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tencent/qc/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/tencent/qc/stat/common/StatPreferences;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 412
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qc/stat/StatConfig;->a(Z)V

    .line 413
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTA has disable for SDK version of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or lower."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 667
    sput-boolean p0, Lcom/tencent/qc/stat/StatConfig;->e:Z

    .line 668
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/tencent/qc/stat/StatConfig;->h:Z

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/tencent/qc/stat/StatConfig;->i:I

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/tencent/qc/stat/StatConfig;->m:I

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/tencent/qc/stat/StatConfig;->l:I

    return v0
.end method

.method static g()I
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/tencent/qc/stat/StatConfig;->k:I

    return v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 239
    sget v0, Lcom/tencent/qc/stat/StatConfig;->j:I

    return v0
.end method

.method static i()Lorg/apache/http/HttpHost;
    .locals 5

    .prologue
    .line 425
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 426
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->o:Ljava/lang/String;

    .line 427
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 429
    const/16 v0, 0x50

    .line 430
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 431
    const/4 v0, 0x0

    aget-object v1, v2, v0

    .line 432
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    :cond_0
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 438
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->n:Ljava/lang/String;

    .line 450
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cgi.connect.qq.com"

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 566
    sget v0, Lcom/tencent/qc/stat/StatConfig;->r:I

    return v0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 602
    sget-boolean v0, Lcom/tencent/qc/stat/StatConfig;->t:Z

    return v0
.end method
