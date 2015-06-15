.class public Lcom/tencent/open/TencentStat;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/open/TContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 33
    invoke-static {p1}, Lcom/tencent/qc/stat/StatService;->b(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static varargs a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 46
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static a(Lcom/tencent/open/TContext;)Z
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    const-string v1, "Common_ta_enable"

    invoke-virtual {v0, v1}, Lcom/tencent/open/OpenConfig;->c(Ljava/lang/String;)Z

    move-result v0

    .line 20
    return v0
.end method

.method public static b(Lcom/tencent/open/TContext;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Z)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Z)V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/open/TContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/qc/stat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method
