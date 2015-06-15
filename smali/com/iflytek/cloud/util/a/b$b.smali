.class Lcom/iflytek/cloud/util/a/b$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/util/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/util/a/b;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/util/a/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/util/a/b$b;->a:Lcom/iflytek/cloud/util/a/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "iFly_ContactManager"

    const-string v1, "ContactObserver_Contact| onChange"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/cloud/util/a/b$b;->a:Lcom/iflytek/cloud/util/a/b;

    invoke-static {v2}, Lcom/iflytek/cloud/util/a/b;->c(Lcom/iflytek/cloud/util/a/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "iFly_ContactManager"

    const-string v1, "onChange too much"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/util/a/b$b;->a:Lcom/iflytek/cloud/util/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/util/a/b;->a(Lcom/iflytek/cloud/util/a/b;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/util/a/b$b;->a:Lcom/iflytek/cloud/util/a/b;

    invoke-static {v0}, Lcom/iflytek/cloud/util/a/b;->a(Lcom/iflytek/cloud/util/a/b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/util/a/b$b;->a:Lcom/iflytek/cloud/util/a/b;

    invoke-static {v0}, Lcom/iflytek/cloud/util/a/b;->b(Lcom/iflytek/cloud/util/a/b;)V

    goto :goto_0
.end method
