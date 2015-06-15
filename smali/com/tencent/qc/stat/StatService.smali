.class public Lcom/tencent/qc/stat/StatService;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/Map;

.field private static volatile c:J

.field private static volatile d:J

.field private static volatile e:I

.field private static f:Lcom/tencent/qc/stat/common/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qc/stat/StatService;->b:Ljava/util/Map;

    .line 55
    sput-wide v1, Lcom/tencent/qc/stat/StatService;->c:J

    .line 60
    sput-wide v1, Lcom/tencent/qc/stat/StatService;->d:J

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qc/stat/StatService;->e:I

    .line 79
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    return-void
.end method

.method static a(Landroid/content/Context;Z)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    if-eqz p1, :cond_0

    .line 251
    sget-wide v2, Lcom/tencent/qc/stat/StatService;->c:J

    sub-long v2, v0, v2

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->d()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 253
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->c(Landroid/content/Context;)V

    .line 257
    :cond_0
    sput-wide v0, Lcom/tencent/qc/stat/StatService;->c:J

    .line 259
    sget-wide v2, Lcom/tencent/qc/stat/StatService;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 260
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/qc/stat/StatService;->d:J

    .line 265
    :cond_1
    sget-wide v2, Lcom/tencent/qc/stat/StatService;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 266
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qc/stat/StatService;->d:J

    .line 269
    invoke-static {p0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qc/stat/StatStore;->b(Landroid/content/Context;)Lcom/tencent/qc/stat/common/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/common/User;->c()I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 270
    invoke-static {p0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qc/stat/StatStore;->b(Landroid/content/Context;)Lcom/tencent/qc/stat/common/User;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/qc/stat/common/User;->a(I)V

    .line 273
    :cond_2
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->c(Landroid/content/Context;)V

    .line 276
    :cond_3
    sget v0, Lcom/tencent/qc/stat/StatService;->e:I

    if-nez v0, :cond_4

    .line 277
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->c(Landroid/content/Context;)V

    .line 279
    :cond_4
    sget v0, Lcom/tencent/qc/stat/StatService;->e:I

    return v0
.end method

.method static a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 186
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->d:I

    if-eqz v2, :cond_0

    .line 187
    const-string v2, "v"

    sget-object v3, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v3, v3, Lcom/tencent/qc/stat/r;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    :cond_0
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->b:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->d:I

    if-eqz v2, :cond_1

    .line 193
    const-string v2, "v"

    sget-object v3, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    iget v3, v3, Lcom/tencent/qc/stat/r;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    :cond_1
    sget-object v2, Lcom/tencent/qc/stat/StatConfig;->a:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    sget-object v2, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v0, Lcom/tencent/qc/stat/StatService;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    invoke-static {p0}, Lcom/tencent/qc/stat/l;->a(Landroid/content/Context;)V

    .line 98
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/qc/stat/StatService;->a:Landroid/os/Handler;

    .line 99
    invoke-static {p0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    .line 129
    invoke-static {p0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/StatStore;->b()V

    .line 131
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->a()Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->d:Lcom/tencent/qc/stat/StatReportStrategy;

    if-ne v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    .line 133
    invoke-static {p0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/StatStore;->a(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string p1, ""

    .line 384
    :cond_0
    sget-object v0, Lcom/tencent/qc/stat/StatConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    sput-object p1, Lcom/tencent/qc/stat/StatConfig;->d:Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 388
    :cond_1
    return-void
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 538
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    if-nez p0, :cond_2

    .line 542
    sget-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    :cond_2
    invoke-static {p1}, Lcom/tencent/qc/stat/StatService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    sget-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_3
    new-instance v0, Lcom/tencent/qc/stat/event/CustomEvent;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;Z)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/qc/stat/event/CustomEvent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 556
    invoke-virtual {v0, p2}, Lcom/tencent/qc/stat/event/CustomEvent;->a([Ljava/lang/String;)V

    .line 557
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 558
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/qc/stat/t;

    invoke-direct {v2, v0}, Lcom/tencent/qc/stat/t;-><init>(Lcom/tencent/qc/stat/event/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 482
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    if-nez p0, :cond_2

    .line 486
    sget-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "The Context of StatService.sendAdditionEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_2
    new-instance v0, Lcom/tencent/qc/stat/event/AdditionEvent;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;Z)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/qc/stat/event/AdditionEvent;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    .line 492
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/qc/stat/t;

    invoke-direct {v2, v0}, Lcom/tencent/qc/stat/t;-><init>(Lcom/tencent/qc/stat/event/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/tencent/qc/stat/common/StatLogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/qc/stat/StatService;->f:Lcom/tencent/qc/stat/common/StatLogger;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aqc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Ljava/lang/String;)V

    .line 964
    const-string v0, "QQConnect"

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->b(Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->c(Z)V

    .line 966
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->b(Z)V

    .line 967
    const v0, 0x1b7740

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(I)V

    .line 968
    const/16 v0, 0x5a0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->b(I)V

    .line 969
    sget-object v0, Lcom/tencent/qc/stat/StatReportStrategy;->f:Lcom/tencent/qc/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Lcom/tencent/qc/stat/StatReportStrategy;)V

    .line 970
    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 147
    sget-object v1, Lcom/tencent/qc/stat/StatConfig;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/qc/stat/common/StatPreferences;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 149
    const-string v3, "0.6.12"

    invoke-static {v3}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b(Ljava/lang/String;)J

    move-result-wide v3

    .line 151
    cmp-long v1, v3, v1

    if-gtz v1, :cond_0

    .line 152
    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Z)V

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 228
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a()I

    move-result v0

    sput v0, Lcom/tencent/qc/stat/StatService;->e:I

    .line 229
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/qc/stat/t;

    new-instance v2, Lcom/tencent/qc/stat/event/SessionEnv;

    sget v3, Lcom/tencent/qc/stat/StatService;->e:I

    invoke-static {}, Lcom/tencent/qc/stat/StatService;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/qc/stat/event/SessionEnv;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lcom/tencent/qc/stat/t;-><init>(Lcom/tencent/qc/stat/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 178
    invoke-static {p0}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;)V

    .line 179
    sget-object v0, Lcom/tencent/qc/stat/StatService;->a:Landroid/os/Handler;

    return-object v0
.end method
