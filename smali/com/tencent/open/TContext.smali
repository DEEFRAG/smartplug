.class public Lcom/tencent/open/TContext;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/open/TContext;->d:J

    .line 23
    const-string v0, "webview"

    iput-object v0, p0, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p2}, Lcom/tencent/open/TContext;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/open/TContext;->f:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/open/TContext;->e:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/open/TContext;->d:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TContext;->c:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_0

    .line 49
    const-string p2, "0"

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/open/TContext;->d:J

    .line 52
    iput-object p1, p0, Lcom/tencent/open/TContext;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/open/TContext;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/open/TContext;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/open/TContext;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/open/TContext;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/tencent/open/TContext;->d:J

    return-wide v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/open/TContext;->f:Landroid/content/Context;

    return-object v0
.end method
