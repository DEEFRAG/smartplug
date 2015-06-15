.class public Lcom/iflytek/cloud/d/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/d/a/h$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/iflytek/cloud/d/a/h;


# instance fields
.field private b:Lcom/iflytek/cloud/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/d/a/h;->a:Lcom/iflytek/cloud/d/a/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    new-instance v0, Lcom/iflytek/cloud/d/a/c;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/d/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .locals 4

    new-instance v0, Lcom/iflytek/cloud/d/a/h$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/d/a/h$a;-><init>(Lcom/iflytek/cloud/d/a/h;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "asr_sch"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/d/a/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "asr_sch"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/d/a/c;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "nlp_version"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/d/a/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "nlp_version"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/d/a/c;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "result_type"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/d/a/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    const-string v2, "result_type"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/d/a/c;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/d/a/c;->a(Lcom/iflytek/cloud/RecognizerListener;)I

    const/4 v0, 0x0

    return v0
.end method

.method public a([BII)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/d/a/c;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/c;->cancel(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/c;->f()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/cloud/b/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/c;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/c;->e()V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/h;->b:Lcom/iflytek/cloud/d/a/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/c;->destroy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/d/a/h;->a:Lcom/iflytek/cloud/d/a/h;

    :cond_0
    return v0
.end method
