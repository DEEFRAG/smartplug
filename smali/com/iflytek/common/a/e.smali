.class public Lcom/iflytek/common/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:[Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/common/c/d;


# direct methods
.method public constructor <init>(Lcom/iflytek/common/c/d;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/iflytek/common/a/e;->d:J

    iput-wide v4, p0, Lcom/iflytek/common/a/e;->e:J

    iput-object p1, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_PERIOD_RUN"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/a/e;->a:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_PERIOD_UPDATE"

    const-wide/32 v2, 0xf731400

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/a/e;->b:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_PKG_RUN"

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/a/e;->c:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_LAST_UPDATE"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/a/e;->d:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_LAST_LAUNCH"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/a/e;->e:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_APPID"

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/common/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/a/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/common/a/e;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_PERIOD_UPDATE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;J)V

    iput-wide p1, p0, Lcom/iflytek/common/a/e;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/common/a/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_APPID"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v2, "KEY_PKG_RUN"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/common/a/e;->c:[Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/common/a/e;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_PERIOD_RUN"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;J)V

    iput-wide p1, p0, Lcom/iflytek/common/a/e;->a:J

    return-void
.end method

.method public c(J)V
    .locals 2

    iput-wide p1, p0, Lcom/iflytek/common/a/e;->d:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_LAST_UPDATE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/common/a/e;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/common/a/e;->d:J

    return-wide v0
.end method

.method public d(J)V
    .locals 2

    iput-wide p1, p0, Lcom/iflytek/common/a/e;->e:J

    iget-object v0, p0, Lcom/iflytek/common/a/e;->g:Lcom/iflytek/common/c/d;

    const-string v1, "KEY_LAST_LAUNCH"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/common/c/d;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/common/a/e;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/common/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/iflytek/common/a/e;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/iflytek/common/a/e;->c:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method
