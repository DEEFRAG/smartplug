.class final Lcom/avos/avoscloud/AVOSCloud$4;
.super Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->verifySMSCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errors:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>([Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$errors:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$errors:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 409
    return-void
.end method
