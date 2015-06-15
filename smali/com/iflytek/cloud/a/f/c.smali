.class public Lcom/iflytek/cloud/a/f/c;
.super Lcom/iflytek/cloud/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/f/c$a;
    }
.end annotation


# instance fields
.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Lcom/iflytek/cloud/SpeechError;

.field private j:Lcom/iflytek/cloud/c/c;

.field private k:Lcom/iflytek/cloud/c/b;

.field private l:Lcom/iflytek/cloud/SynthesizerListener;

.field private m:Lcom/iflytek/cloud/SynthesizerListener;

.field private n:Lcom/iflytek/cloud/a/f/c$a;

.field private o:I

.field private p:Z

.field private q:Lcom/iflytek/cloud/a/f/b;

.field private r:Lcom/iflytek/cloud/c/c$a;

.field private s:Landroid/os/Handler;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->n:Lcom/iflytek/cloud/a/f/c$a;

    iput v1, p0, Lcom/iflytek/cloud/a/f/c;->o:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/f/c;->p:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/f/c;->f:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/f/c;->g:Z

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->i:Lcom/iflytek/cloud/SpeechError;

    new-instance v0, Lcom/iflytek/cloud/a/f/d;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/a/f/d;-><init>(Lcom/iflytek/cloud/a/f/c;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->q:Lcom/iflytek/cloud/a/f/b;

    new-instance v0, Lcom/iflytek/cloud/a/f/e;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/a/f/e;-><init>(Lcom/iflytek/cloud/a/f/c;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->r:Lcom/iflytek/cloud/c/c$a;

    new-instance v0, Lcom/iflytek/cloud/a/f/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/a/f/f;-><init>(Lcom/iflytek/cloud/a/f/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->s:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/f/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/c/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/a/f/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/c;->j()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/f/c$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->n:Lcom/iflytek/cloud/a/f/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/c/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/a/f/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->t:Z

    return v0
.end method

.method static synthetic i(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    iget v1, p0, Lcom/iflytek/cloud/a/f/c;->o:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/iflytek/cloud/a/f/c;->p:Z

    const-string v0, "QTTSOnPlayBegin"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/g/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/c;->r:Lcom/iflytek/cloud/c/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/c/c;->a(Lcom/iflytek/cloud/c/b;Lcom/iflytek/cloud/c/c$a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->s:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/a/f/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/a/f/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/c;->n:Lcom/iflytek/cloud/a/f/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/c;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/c;->h:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/c;->h:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/c;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    const-string v0, "stream_type"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "request_audio_focus"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p4, :cond_0

    new-instance v2, Lcom/iflytek/cloud/c/c;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/iflytek/cloud/c/c;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/a/f/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    const-string v0, "tts_audio_path"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/c/b;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/d/a;->q()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/iflytek/cloud/c/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/b;->a(Ljava/lang/String;)V

    const-string v0, "tts_buffer_time"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/c;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minPlaySec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/f/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->p:Z

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/f/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->q:Lcom/iflytek/cloud/a/f/b;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/f/a;->a(Ljava/lang/String;Lcom/iflytek/cloud/a/f/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 3

    const-string v0, "message_main_thread"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->t:Z

    iput-object p4, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    new-instance v0, Lcom/iflytek/cloud/a/f/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    new-instance v0, Lcom/iflytek/cloud/c/b;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/a;->q()I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Lcom/iflytek/cloud/c/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/a/f/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/a/f/g;-><init>(Lcom/iflytek/cloud/a/f/c;Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/cloud/a/f/h;

    invoke-direct {v1, p0, v0, p2}, Lcom/iflytek/cloud/a/f/h;-><init>(Lcom/iflytek/cloud/a/f/c;Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/f/a;->a(Ljava/lang/String;Lcom/iflytek/cloud/a/f/b;)V

    return-void
.end method

.method public cancel(Z)V
    .locals 6

    const/16 v5, 0x520a

    const/16 v4, 0x4e31

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakSession cancel notifyError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_2

    const-string v0, "tts-onCompleted-cancel"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_3
    iput-object v3, p0, Lcom/iflytek/cloud/a/f/c;->l:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v3, p0, Lcom/iflytek/cloud/a/f/c;->m:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-super {p0, v2}, Lcom/iflytek/cloud/a/d/e;->cancel(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/c;->e()V

    :cond_4
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-super {p0}, Lcom/iflytek/cloud/a/d/e;->d()Z

    move-result v0

    return v0
.end method

.method public destroy()Z
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 4

    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/c;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->b:Lcom/iflytek/cloud/b/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;Z)V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/c;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/c;->c()Z

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/c;->f()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/c;->f()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->k:Lcom/iflytek/cloud/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/c;->d()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/c/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/c;->j:Lcom/iflytek/cloud/c/c;

    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/c;->j()V

    goto :goto_0
.end method
