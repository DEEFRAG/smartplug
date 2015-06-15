.class public Lcom/tencent/tauth/bean/UserInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mIcon_100:Ljava/lang/String;

.field private mIcon_30:Ljava/lang/String;

.field private mIcon_50:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserInfo;->mNickName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_30:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_50:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_100:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getIcon_100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_100:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_30()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_30:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_50()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_50:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserInfo;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon_100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_100:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIcon_30(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_30:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIcon_50(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_50:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserInfo;->mNickName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nickname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_30: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_30:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_50: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_50:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_100: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserInfo;->mIcon_100:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
