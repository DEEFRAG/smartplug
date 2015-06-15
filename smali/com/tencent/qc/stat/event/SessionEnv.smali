.class public Lcom/tencent/qc/stat/event/SessionEnv;
.super Lcom/tencent/qc/stat/event/Event;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/qc/stat/common/Env;

.field private g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/event/Event;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qc/stat/event/SessionEnv;->g:Lorg/json/JSONObject;

    .line 24
    new-instance v0, Lcom/tencent/qc/stat/common/Env;

    invoke-direct {v0, p1}, Lcom/tencent/qc/stat/common/Env;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qc/stat/event/SessionEnv;->a:Lcom/tencent/qc/stat/common/Env;

    .line 25
    iput-object p3, p0, Lcom/tencent/qc/stat/event/SessionEnv;->g:Lorg/json/JSONObject;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qc/stat/event/EventType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/tencent/qc/stat/event/EventType;->b:Lcom/tencent/qc/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "ut"

    iget-object v1, p0, Lcom/tencent/qc/stat/event/Event;->e:Lcom/tencent/qc/stat/common/User;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/common/User;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    iget-object v0, p0, Lcom/tencent/qc/stat/event/SessionEnv;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "cfg"

    iget-object v1, p0, Lcom/tencent/qc/stat/event/SessionEnv;->g:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/event/SessionEnv;->a:Lcom/tencent/qc/stat/common/Env;

    invoke-virtual {v0, p1}, Lcom/tencent/qc/stat/common/Env;->a(Lorg/json/JSONObject;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
