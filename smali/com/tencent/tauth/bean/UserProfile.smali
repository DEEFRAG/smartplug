.class public Lcom/tencent/tauth/bean/UserProfile;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mGender:I

.field private mIcon_100:Ljava/lang/String;

.field private mIcon_30:Ljava/lang/String;

.field private mIcon_50:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mRealName:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/tencent/tauth/bean/UserProfile;->mGender:I

    .line 25
    iput-object p3, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_30:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_50:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_100:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getGender()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mGender:I

    return v0
.end method

.method public getIcon_100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_100:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_30()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_30:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_50()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_50:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public setGender(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mGender:I

    .line 83
    return-void
.end method

.method public setIcon_100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_100:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setIcon_30(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_30:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setIcon_50(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_50:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/tauth/bean/UserProfile;->mRealName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserProfile;->mRealName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ngender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/tencent/tauth/bean/UserProfile;->mGender:I

    if-nez v0, :cond_0

    const-string v0, "\u5973"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_30: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_30:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_50: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_50:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nicon_100: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/UserProfile;->mIcon_100:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\u7537"

    goto :goto_0
.end method
