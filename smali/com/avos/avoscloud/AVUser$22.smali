.class Lcom/avos/avoscloud/AVUser$22;
.super Lcom/avos/avoscloud/SignUpCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->signUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$22;->this$0:Lcom/avos/avoscloud/AVUser;

    invoke-direct {p0}, Lcom/avos/avoscloud/SignUpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1245
    if-eqz p1, :cond_0

    .line 1246
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 1248
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 1252
    const/4 v0, 0x0

    return v0
.end method
