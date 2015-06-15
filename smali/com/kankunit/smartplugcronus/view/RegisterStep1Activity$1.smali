.class Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$1;
.super Ljava/lang/Object;
.source "RegisterStep1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v1, "Registration tips"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    const-string v1, "If you always don't receive a verification code or have no China mainland mobile phone number, please send an email to help@ikonke.com and tell us your phone number and we will reply as soon as possible (not including weekends) we then generate a random password and notify you by e-mail. You can change your own password into the app."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    const-string v1, "Confirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method
