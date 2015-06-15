.class Lcom/avos/avoscloud/AVUser$8;
.super Lcom/avos/avoscloud/UpdatePasswordCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->updatePassword(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$errors:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$8;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$8;->val$errors:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/UpdatePasswordCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$8;->val$errors:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 709
    return-void
.end method
