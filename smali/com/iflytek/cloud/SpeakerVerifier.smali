.class public Lcom/iflytek/cloud/SpeakerVerifier;
.super Lcom/iflytek/cloud/a/d/d;


# static fields
.field private static a:Lcom/iflytek/cloud/SpeakerVerifier;


# instance fields
.field private c:Lcom/iflytek/cloud/d/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    new-instance v0, Lcom/iflytek/cloud/d/a/a;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    return-void
.end method

.method public static createVerifier(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeakerVerifier;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/SpeakerVerifier;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeakerVerifier;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-object v0
.end method

.method public static getVerifier()Lcom/iflytek/cloud/SpeakerVerifier;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/a;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/a;->destroy()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/SpeakerVerifier;->a:Lcom/iflytek/cloud/SpeakerVerifier;

    :cond_1
    return v0
.end method

.method public generatePassword(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/d/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordList(Lcom/iflytek/cloud/SpeechListener;)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/d/a/a;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "subject"

    const-string v2, "ivp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "rse"

    const-string v2, "gb2312"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/d/a/a;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/a;->a(Lcom/iflytek/cloud/SpeechListener;)V

    return-void
.end method

.method public isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/d/a/a;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SpeechListener;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/d/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startListening(Lcom/iflytek/cloud/VerifierListener;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeakerVerifier;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/d/a/a;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/d/a/a;->a(Lcom/iflytek/cloud/VerifierListener;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/a;->e()V

    return-void
.end method

.method public writeAudio([BII)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/d/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeakerVerifier;->c:Lcom/iflytek/cloud/d/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/d/a/a;->a([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpeakerVerifier writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->b(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_0
.end method
