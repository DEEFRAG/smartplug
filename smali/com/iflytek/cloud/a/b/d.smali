.class public Lcom/iflytek/cloud/a/b/d;
.super Lcom/iflytek/cloud/a/d/b;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:Lcom/iflytek/msc/MSCSessionInfo;

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/b;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->d:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->e:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->f:[B

    return-void
.end method

.method private declared-synchronized a([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISVAudioWrite([C[C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/iflytek/cloud/a/d/a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/a;->t()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v4, "vid"

    invoke-virtual {v0, v4}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/a/d/a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sendRequest enter "

    invoke-static {v5}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/cloud/a/b/d;->e:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v4, v5}, Lcom/iflytek/msc/MSC;->QISVQueDelModel([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QISVQueDelModelRelease([C)I

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    :goto_1
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_3

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/cloud/a/b/d;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest leavel:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/d/a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p1, p3}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/a/d/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/iflytek/cloud/a/d/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v3, v0, v4}, Lcom/iflytek/msc/MSC;->QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionBegin ErrCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_1

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2781

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2794

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/d/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/cloud/a/b/d;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "sessionEnd enter "

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/msc/MSC;->QISVSessionEnd([C[B)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sessionEnd leavel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    iput-object v5, p0, Lcom/iflytek/cloud/a/b/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized a([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/a/b/d;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->epstatues:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    const-string v2, "volume"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/d;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/d;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    const-string v2, "VAD CHECK FALSE"

    invoke-static {v2}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioVolume Exception vadret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_1
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->f:[B

    return-object v0
.end method

.method public e()Lcom/iflytek/cloud/a/d/b$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->a:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetResult([C[CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/d;->f:[B

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QISVGetResult leavel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->f:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v1, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/d;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    sget-object v0, Lcom/iflytek/cloud/a/d/b$a;->c:Lcom/iflytek/cloud/a/d/b$a;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: noResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/d;->f:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: hasResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/a/d/b$a;->a:Lcom/iflytek/cloud/a/d/b$a;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result: error errorcode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
