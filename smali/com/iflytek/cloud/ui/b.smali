.class final Lcom/iflytek/cloud/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/ui/a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->c(Lcom/iflytek/cloud/ui/a;)V

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->e(Lcom/iflytek/cloud/ui/a;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a;->f()V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/ui/RecognizerDialogListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0, p1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a;->f()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/cloud/ui/RecognizerDialogListener;->onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V

    :cond_1
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v1}, Lcom/iflytek/cloud/ui/a;->b(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/ui/a/f;->a(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/b;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->b(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a/f;->invalidate()V

    :cond_0
    return-void
.end method
