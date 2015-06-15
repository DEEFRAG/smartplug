.class final Lcom/iflytek/cloud/d/a/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/d/a/a$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/d/a/a$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onVolumeChanged(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onBeginOfSpeech()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/cloud/d/a/b;->a:Lcom/iflytek/cloud/d/a/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/d/a/a$a;->a(Lcom/iflytek/cloud/d/a/a$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onEndOfSpeech()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
