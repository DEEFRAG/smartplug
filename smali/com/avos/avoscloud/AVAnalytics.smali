.class public Lcom/avos/avoscloud/AVAnalytics;
.super Ljava/lang/Object;
.source "AVAnalytics.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static appOpen:Ljava/lang/String; = null

.field private static appOpenWithPush:Ljava/lang/String; = null

.field private static final defaultChannel:Ljava/lang/String; = "AVOS Cloud"

.field private static endPoint:Ljava/lang/String;

.field private static impl:Lcom/avos/avoscloud/AnalyticsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/avos/avoscloud/AVAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVAnalytics;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "statistics"

    sput-object v0, Lcom/avos/avoscloud/AVAnalytics;->endPoint:Ljava/lang/String;

    .line 38
    const-string v0, "_appOpen"

    sput-object v0, Lcom/avos/avoscloud/AVAnalytics;->appOpen:Ljava/lang/String;

    .line 39
    const-string v0, "_appOpenWithPush"

    sput-object v0, Lcom/avos/avoscloud/AVAnalytics;->appOpenWithPush:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/avos/avoscloud/AnalyticsImpl;->getInstance()Lcom/avos/avoscloud/AnalyticsImpl;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static SetCustomInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    .local p0, "customInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setCustomInfo(Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method static synthetic access$000()Lcom/avos/avoscloud/AnalyticsImpl;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    return-object v0
.end method

.method protected static debugDump(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->debugDump(Landroid/content/Context;)V

    .line 362
    return-void
.end method

.method public static enableCrashReport(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 261
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->enableCrashReport(Landroid/content/Context;Z)V

    .line 262
    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->sendInstantRecordingRequest()V

    .line 358
    return-void
.end method

.method static getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVAnalytics;->getConfigParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 606
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AnalyticsImpl;->getConfigParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->getCustomInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    return-void
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "acc"    # I

    .prologue
    .line 386
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "acc"    # I

    .prologue
    .line 415
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 416
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AnalyticsEvent;->setDurationValue(J)V

    .line 417
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->setAccumulation(I)V

    .line 418
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 420
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "stringHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 434
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AnalyticsEvent;->addAttributes(Ljava/util/Map;)V

    .line 435
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 437
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVAnalytics;->onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 536
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v1, ""

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    .line 537
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "msDuration"    # J

    .prologue
    .line 450
    const-string v0, ""

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVAnalytics;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 451
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "msDuration"    # J

    .prologue
    .line 465
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVAnalytics;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 466
    return-void
.end method

.method private static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p4, "msDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p3, "stringHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 497
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->addAttributes(Ljava/util/Map;)V

    .line 498
    invoke-virtual {v0, p4, p5}, Lcom/avos/avoscloud/AnalyticsEvent;->setDurationValue(J)V

    .line 499
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 501
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "msDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, "stringHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVAnalytics;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 481
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 522
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 524
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 549
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v1, ""

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 551
    return-void
.end method

.method public static onFragmentEnd(Ljava/lang/String;)V
    .locals 2
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank page name string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->endFragment(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static onFragmentStart(Ljava/lang/String;)V
    .locals 2
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank page name string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->beginFragment(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static onKVEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "primaryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    .local p2, "stringStringHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v2, ""

    invoke-virtual {v1, p0, p1, v2, p3}, Lcom/avos/avoscloud/AnalyticsImpl;->beginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AnalyticsEvent;

    move-result-object v0

    .line 566
    .local v0, "event":Lcom/avos/avoscloud/AnalyticsEvent;
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AnalyticsEvent;->setPrimaryKey(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "primaryKey"    # Ljava/lang/String;

    .prologue
    .line 579
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/avos/avoscloud/AnalyticsImpl;->endEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 581
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AnalyticsImpl;->pauseSession()V

    .line 273
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->endActivity(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVAnalytics;->onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->shouldRegardAsNewSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->endSession(Landroid/content/Context;)V

    .line 294
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AnalyticsImpl;->beginSession()V

    .line 295
    const-string v1, "new session start when resume"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 297
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->endActivity(Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AnalyticsImpl;->beginActivity(Ljava/lang/String;)V

    .line 299
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->postRecording(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method private static postAnalytics(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "postData":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->endPoint:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/avos/avoscloud/AVAnalytics$1;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVAnalytics$1;-><init>()V

    const/4 v6, 0x0

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v2    # "postData":Ljava/lang/String;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v8

    .line 160
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->TAG:Ljava/lang/String;

    const-string v1, "post analytics data failed."

    invoke-static {v0, v1, v8}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 317
    return-void
.end method

.method static reportError(Landroid/content/Context;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "crashData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AnalyticsUtils;->deviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 322
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "stats/crash"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/avos/avoscloud/AVAnalytics$2;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVAnalytics$2;-><init>(Lcom/avos/avoscloud/SaveCallback;)V

    const/4 v6, 0x0

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static setAnalyticsEnabled(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 660
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setAnalyticsEnabled(Z)V

    .line 661
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank channel string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setAppChannel(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static setAutoLocation(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 225
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setAutoLocation(Z)V

    .line 226
    return-void
.end method

.method public static setCustomInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "customInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setCustomInfo(Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 250
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setEnableDebugLog(Z)V

    .line 251
    return-void
.end method

.method public static setOnlineConfigureListener(Lcom/avos/avoscloud/AVOnlineConfigureListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/avos/avoscloud/AVOnlineConfigureListener;

    .prologue
    .line 647
    if-nez p0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AVOnlineConfigureListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->setAVOnlineConfigureListener(Lcom/avos/avoscloud/AVOnlineConfigureListener;)V

    .line 651
    return-void
.end method

.method public static setReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/avos/avoscloud/ReportPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null report policy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->setReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V

    .line 637
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 2
    .param p0, "ms"    # J

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session continute milliseconds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/AnalyticsImpl;->setSessionContinueMillis(J)V

    .line 240
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 176
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 177
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 178
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "Channel ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "channel":Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AnalyticsImpl;->setAppChannel(Ljava/lang/String;)V

    .line 185
    .end local v1    # "channel":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->enableCrashReport(Landroid/content/Context;Z)V

    .line 186
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v4, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->flushLastSession(Landroid/content/Context;)V

    .line 187
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v4, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfig(Landroid/content/Context;)V

    .line 188
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->enableCrashReport(Landroid/content/Context;Z)V

    .line 189
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AnalyticsImpl;->beginSession()V

    .line 190
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v4, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->reportFirstBoot(Landroid/content/Context;)V

    .line 194
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 182
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    const-string v5, "AVOS Cloud"

    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/AnalyticsImpl;->setAppChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "exception":Ljava/lang/Exception;
    sget-object v4, Lcom/avos/avoscloud/AVAnalytics;->TAG:Ljava/lang/String;

    const-string v5, "Start context failed."

    invoke-static {v4, v5, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static statisticsDictionary(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank event string."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "event_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "channel"

    sget-object v2, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AnalyticsImpl;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method public static trackAppOpened(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->appOpen:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVAnalytics;->statisticsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v2, "!AV!AppOpen"

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/AVAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    if-eqz p0, :cond_0

    const-string v1, "com.avoscloud.push"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 68
    invoke-static {p0}, Lcom/avos/avoscloud/AVAnalytics;->trackPushOpened(Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method private static trackPushOpened(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    sget-object v1, Lcom/avos/avoscloud/AVAnalytics;->appOpenWithPush:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVAnalytics;->statisticsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 82
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v2, "!AV!PushOpen"

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/AVAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AnalyticsImpl;->updateOnlineConfig(Landroid/content/Context;)V

    .line 618
    return-void
.end method


# virtual methods
.method public setAge(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    .line 622
    return-void
.end method

.method public setDefaultReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/avos/avoscloud/ReportPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/avos/avoscloud/AVAnalytics;->impl:Lcom/avos/avoscloud/AnalyticsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AnalyticsImpl;->setReportPolicy(Landroid/content/Context;Lcom/avos/avoscloud/ReportPolicy;)V

    .line 78
    return-void
.end method

.method public setGender(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gender"    # Ljava/lang/String;

    .prologue
    .line 620
    return-void
.end method

.method public setUserID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 624
    return-void
.end method
