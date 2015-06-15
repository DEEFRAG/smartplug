.class public Lcom/tencent/qc/stat/common/Env;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Lcom/tencent/qc/stat/common/c;

.field private static d:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qc/stat/common/Env;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/tencent/qc/stat/common/Env;->b:Ljava/lang/Integer;

    .line 128
    iput-object v0, p0, Lcom/tencent/qc/stat/common/Env;->c:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/tencent/qc/stat/common/Env;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/common/c;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->o(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/Env;->b:Ljava/lang/Integer;

    .line 160
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/Env;->c:Ljava/lang/String;

    .line 161
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/tencent/qc/stat/common/c;
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/tencent/qc/stat/common/Env;->a:Lcom/tencent/qc/stat/common/c;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/tencent/qc/stat/common/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qc/stat/common/c;-><init>(Landroid/content/Context;Lcom/tencent/qc/stat/common/b;)V

    sput-object v0, Lcom/tencent/qc/stat/common/Env;->a:Lcom/tencent/qc/stat/common/c;

    .line 152
    :cond_0
    sget-object v0, Lcom/tencent/qc/stat/common/Env;->a:Lcom/tencent/qc/stat/common/c;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 165
    sget-object v1, Lcom/tencent/qc/stat/common/Env;->a:Lcom/tencent/qc/stat/common/c;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/tencent/qc/stat/common/Env;->a:Lcom/tencent/qc/stat/common/c;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/c;->a(Lorg/json/JSONObject;)V

    .line 169
    :cond_0
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/qc/stat/common/Env;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/qc/stat/common/Env;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "tn"

    iget-object v2, p0, Lcom/tencent/qc/stat/common/Env;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_1
    const-string v1, "ev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    sget-object v0, Lcom/tencent/qc/stat/common/Env;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/qc/stat/common/Env;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 175
    const-string v0, "eva"

    sget-object v1, Lcom/tencent/qc/stat/common/Env;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_2
    return-void
.end method
