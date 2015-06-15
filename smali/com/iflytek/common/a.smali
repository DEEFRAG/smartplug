.class public final Lcom/iflytek/common/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/common/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/iflytek/common/c;->a()Lcom/iflytek/common/b/a;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/common/b/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/common/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/common/b/a;

    invoke-interface {v0, p0}, Lcom/iflytek/common/b/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/common/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/a;->a:Lcom/iflytek/common/b/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/iflytek/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/iflytek/common/c/c;->a(Z)V

    return-void
.end method
