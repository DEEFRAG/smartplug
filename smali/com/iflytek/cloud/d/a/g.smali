.class public Lcom/iflytek/cloud/d/a/g;
.super Lcom/iflytek/cloud/a/d/e;

# interfaces
.implements Lcom/iflytek/cloud/a/f/c$a;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/iflytek/cloud/a/f/c;

.field private h:Lcom/iflytek/cloud/a/f/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "new Session Start"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/a/f/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/a/f/c$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;Z)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/a/f/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/a/f/c$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p3, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 6

    const/4 v5, 0x0

    const-string v0, "startSpeaking enter"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTTSStart"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/cloud/a/g/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/f/c;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    const-string v3, "tts_interrupt_error"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/d/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "startSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return v5

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, v1, Lcom/iflytek/cloud/a/f/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/d/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, v1, Lcom/iflytek/cloud/a/f/c;->i:Lcom/iflytek/cloud/SpeechError;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-boolean v1, v1, Lcom/iflytek/cloud/a/f/c;->f:Z

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/d/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/iflytek/cloud/a/f/c;

    iget-object v3, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/cloud/a/f/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v2, p0}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/a/f/c$a;)V

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    iget-object v3, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V

    :cond_6
    iput-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, p2}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/SynthesizerListener;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->i()V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-boolean v0, v0, Lcom/iflytek/cloud/a/f/c;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/d/a/g;->a()V

    const-string v0, "startSpeaking NextSession pause"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->e()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 4

    const-string v0, "synthesizeToUri enter"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    const-string v2, "tts_interrupt_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/a/f/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "synthesizeToUri leave"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSpeaking enter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_0

    const-string v0, "-->stopSpeaking cur"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_1

    const-string v0, "-->stopSpeaking cur next"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->cancel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/g;->h:Lcom/iflytek/cloud/a/f/c;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "stopSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public destroy()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/d/a/g;->a(Z)V

    invoke-super {p0}, Lcom/iflytek/cloud/a/d/e;->destroy()Z

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    const-string v0, "pauseSpeaking enter"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->g()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "pauseSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 1

    const-string v0, "resumeSpeaking enter"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->i()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "resumeSpeaking leave"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "isSpeaking enter"

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->h()Z

    move-result v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "isSpeaking leave"

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()I
    .locals 2

    const/4 v0, 0x4

    const-string v1, "getState enter"

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/g;->g:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/c;->f()I

    move-result v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "getState leave"

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
