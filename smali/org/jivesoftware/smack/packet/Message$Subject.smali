.class public Lorg/jivesoftware/smack/packet/Message$Subject;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subject"
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Language cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    if-nez p2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subject cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    .line 523
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    .line 524
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$1;)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/Message$Subject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    if-ne p0, p1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v0

    .line 557
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 558
    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 561
    goto :goto_0

    .line 563
    :cond_3
    check-cast p1, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 565
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 547
    .line 548
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 549
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    return v0
.end method
