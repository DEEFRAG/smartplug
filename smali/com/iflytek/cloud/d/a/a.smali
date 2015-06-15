.class public Lcom/iflytek/cloud/d/a/a;
.super Lcom/iflytek/cloud/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/d/a/a$a;
    }
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/d/a/a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/d/a/a;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/d/a/a;)Lcom/iflytek/cloud/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/d/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/d/a/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/d/a/a;->f:Z

    return v0
.end method


# virtual methods
.method public a([BII)I
    .locals 4

    const/16 v0, 0x277d

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

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
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/c;->g()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v0, 0x277a

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/a/b/c;->a([BII)V

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "023456789"

    const-string v2, "023456789"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-ge v2, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "023456789"

    const-string v6, "023456789"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v0, v6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/cloud/SpeechListener;)V
    .locals 2

    new-instance v0, Lcom/iflytek/cloud/DataDownloader;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/DataDownloader;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/DataDownloader;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/DataDownloader;->downloadData(Lcom/iflytek/cloud/SpeechListener;)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/VerifierListener;)V
    .locals 5

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    const-string v2, "request_audio_focus"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/d/a/a;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    const-string v3, "isv_interrupt_error"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/d/a;->b(Z)V

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    iget-object v2, p0, Lcom/iflytek/cloud/d/a/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    const-string v4, "verify"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/d/a/a;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/a/b/c;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/iflytek/cloud/d/a/a;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/a/g/f;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/b/c;

    new-instance v2, Lcom/iflytek/cloud/d/a/a$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/d/a/a$a;-><init>(Lcom/iflytek/cloud/d/a/a;Lcom/iflytek/cloud/VerifierListener;)V

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/b/c;->a(Lcom/iflytek/cloud/VerifierListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "auth_id"

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/a/b/a;

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->a:Landroid/content/Context;

    const-string v2, "manager"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/d/a/a;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/a/b/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->b:Lcom/iflytek/cloud/b/a;

    new-instance v2, Lcom/iflytek/cloud/a/b/a$a;

    invoke-direct {v2, p3}, Lcom/iflytek/cloud/a/b/a$a;-><init>(Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/a/b/a;->a(Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/a/b/a$a;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/d/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/a;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/c;->a()Z

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

    invoke-virtual {p0}, Lcom/iflytek/cloud/d/a/a;->d()Z

    move-result v0

    return v0
.end method
