.class public Lcom/iflytek/cloud/d/a/c;
.super Lcom/iflytek/cloud/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/d/a/c$a;
    }
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/d/a/c;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/d/a/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/d/a/c;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/d/a/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/d/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/d/a/c;->f:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/RecognizerListener;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    const-string v2, "request_audio_focus"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/d/a/c;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    const-string v3, "asr_interrupt_error"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/a;->b(Z)V

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/a/a/b;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    const-string v4, "iat"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/d/a/c;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/a/a/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/iflytek/cloud/d/a/c;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/a/g/f;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/a/b;

    new-instance v2, Lcom/iflytek/cloud/d/a/c$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/d/a/c$a;-><init>(Lcom/iflytek/cloud/d/a/c;Lcom/iflytek/cloud/RecognizerListener;)V

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/a/b;->a(Lcom/iflytek/cloud/RecognizerListener;)V

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I
    .locals 6

    const/16 v0, 0x4e2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x4e29

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Lcom/iflytek/cloud/DataUploader;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/iflytek/cloud/DataUploader;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/iflytek/cloud/d/a/d;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/d/a/d;-><init>(Lcom/iflytek/cloud/d/a/c;Lcom/iflytek/cloud/GrammarListener;)V

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2, v1}, Lcom/iflytek/cloud/DataUploader;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    const-string v1, "subject"

    const-string v4, "asr"

    invoke-virtual {v2, v1, v4}, Lcom/iflytek/cloud/DataUploader;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "data_type"

    invoke-virtual {v2, v1, p1}, Lcom/iflytek/cloud/DataUploader;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    const-string v4, "text_encoding"

    const-string v5, "utf-8"

    invoke-virtual {v1, v4, v5}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v1, "grammar_name"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/d/a/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v3, p1, v1}, Lcom/iflytek/cloud/DataUploader;->uploadData(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
    .locals 6

    const/16 v1, 0x4e2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e29

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/iflytek/cloud/DataUploader;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/DataUploader;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/iflytek/cloud/d/a/e;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/d/a/e;-><init>(Lcom/iflytek/cloud/d/a/c;Lcom/iflytek/cloud/LexiconListener;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/DataUploader;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    const-string v0, "subject"

    const-string v4, "uup"

    invoke-virtual {v2, v0, v4}, Lcom/iflytek/cloud/DataUploader;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "lexicon_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/d/a/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, p1

    :cond_3
    const-string v4, "data_type"

    invoke-virtual {v2, v4, v0}, Lcom/iflytek/cloud/DataUploader;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->b:Lcom/iflytek/cloud/b/a;

    const-string v4, "text_encoding"

    const-string v5, "utf-8"

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v3, p1, v0}, Lcom/iflytek/cloud/DataUploader;->uploadData(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public a([BII)I
    .locals 4

    const/16 v0, 0x277d

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    if-nez v2, :cond_0

    const-string v0, "writeAudio error, no active session."

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-gtz v2, :cond_2

    :cond_1
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_3

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/a/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/b;->a()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v0, 0x277a

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/a/a/b;->a([BII)V

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/a/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/b;->j()Lcom/iflytek/cloud/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/d/c;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/d/a/c;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/a/g/f;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/e;->cancel(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/c;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/a/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/a/b;->a(Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/cloud/d/a/c;->d()Z

    move-result v0

    return v0
.end method
