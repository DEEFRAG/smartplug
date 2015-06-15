.class final Lcom/iflytek/cloud/a/b/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/b/a$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/b/a$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a$a;->a(Lcom/iflytek/cloud/a/b/a$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a$a;->a(Lcom/iflytek/cloud/a/b/a$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/SpeechListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a$a;->a(Lcom/iflytek/cloud/a/b/a$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/a$a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a$a;->a(Lcom/iflytek/cloud/a/b/a$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
