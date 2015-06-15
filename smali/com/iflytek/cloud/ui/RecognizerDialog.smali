.class public Lcom/iflytek/cloud/ui/RecognizerDialog;
.super Lcom/iflytek/cloud/ui/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/ui/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/iflytek/cloud/ui/a;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/cloud/ui/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/RecognizerDialog;->a:Lcom/iflytek/cloud/ui/a/e;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/cloud/ui/a/c;->dismiss()V

    return-void
.end method

.method public setListener(Lcom/iflytek/cloud/ui/RecognizerDialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/RecognizerDialog;->a:Lcom/iflytek/cloud/ui/a/e;

    check-cast v0, Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/RecognizerDialogListener;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/RecognizerDialog;->a:Lcom/iflytek/cloud/ui/a/e;

    check-cast v0, Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/ui/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUILanguage(Ljava/util/Locale;)V
    .locals 0

    invoke-static {p1}, Lcom/iflytek/cloud/resource/Resource;->setUILanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/cloud/ui/a/c;->show()V

    return-void
.end method
