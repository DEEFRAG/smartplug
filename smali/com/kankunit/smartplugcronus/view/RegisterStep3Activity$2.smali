.class Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;
.super Landroid/os/Handler;
.source "RegisterStep3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_0

    .line 132
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v3, "Registration successful"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v3, "KSmartLoginInfo"

    invoke-virtual {v2, v3, v4}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "AUTO_ISCHECK"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;->finish()V

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 145
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v3, "User already exists"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 149
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep3Activity;

    const-string v3, "Registration failed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_2
    return-void
.end method
