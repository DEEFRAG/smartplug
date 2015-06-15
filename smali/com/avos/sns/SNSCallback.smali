.class public abstract Lcom/avos/sns/SNSCallback;
.super Ljava/lang/Object;
.source "SNSCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V
.end method

.method final internalDone(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V
    .locals 0
    .param p1, "base"    # Lcom/avos/sns/SNSBase;
    .param p2, "e"    # Lcom/avos/sns/SNSException;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/avos/sns/SNSCallback;->done(Lcom/avos/sns/SNSBase;Lcom/avos/sns/SNSException;)V

    .line 18
    return-void
.end method
