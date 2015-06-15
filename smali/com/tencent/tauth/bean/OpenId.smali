.class public Lcom/tencent/tauth/bean/OpenId;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mOpenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/tauth/bean/OpenId;->mOpenId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/tauth/bean/OpenId;->mClientId:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tauth/bean/OpenId;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/tauth/bean/OpenId;->mOpenId:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/tauth/bean/OpenId;->mClientId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/tauth/bean/OpenId;->mOpenId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/tauth/bean/OpenId;->mOpenId:Ljava/lang/String;

    return-object v0
.end method
