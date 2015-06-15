.class final Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;
.super Ljava/lang/Object;
.source "PrivateCredentialPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CredOwner"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4dd1a9e946fc8bcaL


# instance fields
.field private transient isClassWildcard:Z

.field private transient isPNameWildcard:Z

.field principalClass:Ljava/lang/String;

.field principalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iput-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    .line 347
    :cond_0
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iput-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    .line 351
    :cond_1
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    if-nez v0, :cond_2

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.12"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    .line 356
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    if-ne p1, p0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    instance-of v2, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    if-eqz v2, :cond_3

    .line 382
    check-cast p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 383
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method implies(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 361
    if-ne p1, p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    check-cast p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;

    .line 367
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    :cond_2
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/harmony/javax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
