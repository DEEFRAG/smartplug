.class public abstract Lcom/tencent/qc/stat/event/Event;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:I

.field protected e:Lcom/tencent/qc/stat/common/User;

.field protected f:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qc/stat/event/Event;->e:Lcom/tencent/qc/stat/common/User;

    .line 40
    iput-object p1, p0, Lcom/tencent/qc/stat/event/Event;->f:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/tencent/qc/stat/StatConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/event/Event;->b:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qc/stat/event/Event;->c:J

    .line 43
    iput p2, p0, Lcom/tencent/qc/stat/event/Event;->d:I

    .line 44
    invoke-static {p1}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qc/stat/StatStore;->b(Landroid/content/Context;)Lcom/tencent/qc/stat/common/User;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/event/Event;->e:Lcom/tencent/qc/stat/common/User;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/tencent/qc/stat/event/EventType;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public b()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/tencent/qc/stat/event/Event;->c:J

    return-wide v0
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v0, "ky"

    iget-object v1, p0, Lcom/tencent/qc/stat/event/Event;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "et"

    invoke-virtual {p0}, Lcom/tencent/qc/stat/event/Event;->a()Lcom/tencent/qc/stat/event/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qc/stat/event/EventType;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v0, "ui"

    iget-object v1, p0, Lcom/tencent/qc/stat/event/Event;->e:Lcom/tencent/qc/stat/common/User;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/common/User;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/tencent/qc/stat/event/Event;->e:Lcom/tencent/qc/stat/common/User;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/common/User;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "mc"

    invoke-static {p1, v1, v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "si"

    iget v1, p0, Lcom/tencent/qc/stat/event/Event;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v0, "ts"

    iget-wide v1, p0, Lcom/tencent/qc/stat/event/Event;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/qc/stat/event/Event;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "Event"

    const-string v2, "Failed to encode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/qc/stat/event/Event;->f:Landroid/content/Context;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/tencent/qc/stat/event/Event;->b(Lorg/json/JSONObject;)Z

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
