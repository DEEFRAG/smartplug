.class abstract Lcom/avos/avoscloud/AVUploader;
.super Ljava/lang/Object;
.source "AVUploader.java"


# instance fields
.field private volatile cancelled:Z

.field private volatile complete:Z

.field protected final defaultFileKeyLength:I

.field protected final parseFile:Lcom/avos/avoscloud/AVFile;

.field protected progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field protected saveCallback:Lcom/avos/avoscloud/SaveCallback;

.field protected totalSize:J

.field private volatile workerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 2
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 14
    iput-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    .line 17
    const/16 v0, 0x28

    iput v0, p0, Lcom/avos/avoscloud/AVUploader;->defaultFileKeyLength:I

    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AVUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    .line 22
    iput-object p2, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    .line 23
    iput-object p3, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 24
    iput-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 25
    iput-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUploader;

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/AVUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    return p1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "interrupt"    # Z

    .prologue
    const/4 v0, 0x1

    .line 74
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 77
    :cond_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 78
    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->interruptImmediately()V

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->onCancelled()V

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method abstract doWork()Lcom/avos/avoscloud/AVException;
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avos/avoscloud/AVUploader$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVUploader$1;-><init>(Lcom/avos/avoscloud/AVUploader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVUploader;->workerThread:Ljava/lang/Thread;

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method public interruptImmediately()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 90
    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "upload cancel"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p1, "result"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 56
    :cond_0
    return-void
.end method

.method public publishProgress(I)V
    .locals 1
    .param p1, "percentage"    # I

    .prologue
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUploader;->onProgressUpdate(Ljava/lang/Integer;)V

    .line 98
    return-void
.end method
