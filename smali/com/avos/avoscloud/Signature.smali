.class public Lcom/avos/avoscloud/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field private nonce:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private signedPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/avos/avoscloud/Signature;->timestamp:J

    return-wide v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->nonce:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->signature:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSignedPeerIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "signedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/Signature;->signedPeerIds:Ljava/util/List;

    .line 24
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/avos/avoscloud/Signature;->timestamp:J

    .line 40
    return-void
.end method
