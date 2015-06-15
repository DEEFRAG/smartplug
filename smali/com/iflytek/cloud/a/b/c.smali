.class public Lcom/iflytek/cloud/a/b/c;
.super Lcom/iflytek/cloud/a/d/a;

# interfaces
.implements Lcom/iflytek/cloud/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/b/c$1;
    }
.end annotation


# instance fields
.field protected volatile a:Lcom/iflytek/cloud/VerifierListener;

.field protected b:J

.field protected c:Z

.field protected d:Lcom/iflytek/cloud/a/b/d;

.field protected e:Lcom/iflytek/cloud/c/f;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/iflytek/cloud/VerifierResult;

.field protected i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected j:I

.field private k:J

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/d/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    iput-wide v3, p0, Lcom/iflytek/cloud/a/b/c;->b:J

    iput-boolean v2, p0, Lcom/iflytek/cloud/a/b/c;->c:Z

    new-instance v0, Lcom/iflytek/cloud/a/b/d;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    const-string v0, "train"

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput v2, p0, Lcom/iflytek/cloud/a/b/c;->j:I

    iput-wide v3, p0, Lcom/iflytek/cloud/a/b/c;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/b/c;->a(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private j()Z
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "sst"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "train"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "--->onStoped: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->y()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/d;->a()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->a(I)V

    const-string v0, "--->onStoped: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private w()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "--->requestResult: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/d;->e()Lcom/iflytek/cloud/a/d/b$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v0, "--->requestResult: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->x()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private x()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/b/c;->t:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/b/d;->d()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/VerifierResult;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/VerifierResult;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->f:Ljava/lang/String;

    const-string v1, "train"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    iget v0, v0, Lcom/iflytek/cloud/VerifierResult;->ret:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    iget v0, v0, Lcom/iflytek/cloud/VerifierResult;->suc:I

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    iget v1, v1, Lcom/iflytek/cloud/VerifierResult;->rgn:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->h:Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->c(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/f;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/a;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->b()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->d()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/c;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->l()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/c;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "--->on timeout vad"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    const-string v0, "--->onEnd: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->y()V

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/c;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/d;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/a;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/c;->s:Z

    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    const-string v0, "--->onEnd: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "VerifyListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/VerifierListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "--->startVerify: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->c()V

    const-string v0, "--->startVerify: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([BI)V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0, p2}, Lcom/iflytek/cloud/VerifierListener;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/cloud/a/d/a$b;->c:Lcom/iflytek/cloud/a/d/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    if-lt v0, p3, :cond_2

    iget v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    sub-int v2, p3, v2

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lcom/iflytek/cloud/a/b/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->d(Landroid/os/Message;)V

    iput v3, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    goto :goto_0

    :cond_3
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lcom/iflytek/cloud/a/b/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->d(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected a([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/b/d;->a([BI)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "---> VadCheck Time: Vad End Point"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/d;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/b/c;->a([BI)V

    goto :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "--->stopRecord: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/d/a$b;->c:Lcom/iflytek/cloud/a/d/a$b;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endVerify fail  status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->y()V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->a(I)V

    const-string v0, "--->stopRecord: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "--->onStart: in"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "net_check"

    invoke-virtual {v1, v2, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/h;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/c/f;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->q()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/a/b/c;->j:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/c/f;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/c/f;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/c/f;->a(Lcom/iflytek/cloud/c/f$a;)V

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/d/a$b;->e:Lcom/iflytek/cloud/a/d/a$b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onBeginOfSpeech()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/b/c;->b:J

    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/a/b/c;->removeMessages(I)V

    sget-object v0, Lcom/iflytek/cloud/a/d/a$a;->c:Lcom/iflytek/cloud/a/d/a$a;

    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->p:I

    invoke-virtual {p0, v6, v0, v4, v1}, Lcom/iflytek/cloud/a/b/c;->a(ILcom/iflytek/cloud/a/d/a$a;ZI)V

    sget-object v0, Lcom/iflytek/cloud/a/d/a$a;->a:Lcom/iflytek/cloud/a/d/a$a;

    invoke-virtual {p0, v5, v0, v4, v4}, Lcom/iflytek/cloud/a/b/c;->a(ILcom/iflytek/cloud/a/d/a$a;ZI)V

    const-string v0, "--->onStart: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/a/b/c;->a([BZ)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/c;->c(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->y()V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/a;->b(Z)V

    return-void
.end method

.method c(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->y()V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->w()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/d/a$b;->d:Lcom/iflytek/cloud/a/d/a$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    sget-object v1, Lcom/iflytek/cloud/a/d/a$a;->b:Lcom/iflytek/cloud/a/d/a$a;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/a/b/c;->a(ILcom/iflytek/cloud/a/d/a$a;ZI)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time cost: onRecordStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/iflytek/cloud/a/b/c;->k:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    iget-object v0, v0, Lcom/iflytek/cloud/a/b/d;->a:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/d;

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/d/a;)I

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/d/a$b;->c:Lcom/iflytek/cloud/a/d/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/c;->a(Lcom/iflytek/cloud/a/d/a$b;)V

    return-void
.end method

.method public e()V
    .locals 2

    sget-object v0, Lcom/iflytek/cloud/a/d/a$b;->c:Lcom/iflytek/cloud/a/d/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->s()Lcom/iflytek/cloud/a/d/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "--->vadEndCall: out"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->a()Z

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public f()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/a/b/c;->j:I

    return v0
.end method

.method protected h()V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/cloud/a/b/c;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/b/c;->p:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/c;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/b/c;->j:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "filter_audio_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/c;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "sample_rate"

    iget v3, p0, Lcom/iflytek/cloud/a/b/c;->q:I

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/a/b/c;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/iflytek/cloud/a/d/a;->h()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
