.class public Lcom/tencent/qc/stat/event/CustomEvent;
.super Lcom/tencent/qc/stat/event/Event;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/event/Event;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;

    invoke-direct {v0}, Lcom/tencent/qc/stat/event/CustomEvent$Key;-><init>()V

    iput-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->g:J

    .line 105
    iget-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iput-object p3, v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;->a:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qc/stat/event/EventType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/tencent/qc/stat/event/EventType;->d:Lcom/tencent/qc/stat/event/EventType;

    return-object v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iput-object p1, v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;->b:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    .line 115
    const-string v0, "ei"

    iget-object v1, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iget-object v1, v1, Lcom/tencent/qc/stat/event/CustomEvent$Key;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-wide v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 117
    const-string v0, "du"

    iget-wide v1, p0, Lcom/tencent/qc/stat/event/CustomEvent;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iget-object v0, v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iget-object v2, v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 123
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "ar"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iget-object v0, v0, Lcom/tencent/qc/stat/event/CustomEvent$Key;->c:Ljava/util/Properties;

    if-eqz v0, :cond_3

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/qc/stat/event/CustomEvent;->a:Lcom/tencent/qc/stat/event/CustomEvent$Key;

    iget-object v1, v1, Lcom/tencent/qc/stat/event/CustomEvent$Key;->c:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 130
    const-string v1, "kv"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
